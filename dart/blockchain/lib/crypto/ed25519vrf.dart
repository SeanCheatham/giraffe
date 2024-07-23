import 'dart:typed_data';

import 'package:blockchain_sdk/sdk.dart';
import 'package:cryptography/cryptography.dart';

abstract class Ed25519VRF {
  Future<Ed25519VRFKeyPair> generateKeyPair();
  Future<Ed25519VRFKeyPair> generateKeyPairFromSeed(List<int> seed);
  Future<Uint8List> getVerificationKey(List<int> secretKey);
  Future<bool> verify(List<int> signature, List<int> message, List<int> vk);
  Future<Uint8List> sign(List<int> sk, List<int> message);
  Future<Uint8List> proofToHash(List<int> signature);
}

/**
 * AMS 2021:
 * ECVRF-ED25519-SHA512-TAI
 * Elliptic curve Verifiable Random Function based on EdDSA
 * https://tools.ietf.org/html/draft-irtf-cfrg-vrf-04
 */
class Ed25519VRFImpl extends Ed25519VRF {
  Ed25519VRF() {
    ec.pointSetNeutralAccum(NP);
    ec.encodePoint(NP, neutralPointBytes, 0);
  }

  static final suite = Int8List(1)..[0] = 3;
  final cofactor = Int8List(ec.SCALAR_BYTES)..[0] = 8;
  static final zeroScalar = Int8List(ec.SCALAR_BYTES);
  static final oneScalar = Int8List(ec.SCALAR_BYTES)..[0] = 1;
  final np = Int32List(ec.SCALAR_INTS);
  final nb = Int32List(ec.SCALAR_INTS);
  static const C_BYTES = 16;
  static const PI_BYTES = ec.POINT_BYTES + ec.SCALAR_BYTES + C_BYTES;
  static final neutralPointBytes = Int8List(ec.SCALAR_BYTES);
  final NP = PointAccum.create();

  Future<Ed25519VRFKeyPair> generateKeyPair() async {
    final random = SecureRandom.safe;
    final seed = List.generate(32, (index) => random.nextInt(256));
    return generateKeyPairFromSeed(seed);
  }

  Future<Ed25519VRFKeyPair> generateKeyPairFromSeed(List<int> seed) async {
    assert(seed.length == 32);
    // TODO ?
    // final sk = (await _sha512Signed(seed)).sublist(0, 32);
    final sk = seed;
    final vk = await getVerificationKey(sk);
    return Ed25519VRFKeyPair(sk: Uint8List.fromList(sk), vk: vk);
  }

  Future<Uint8List> getVerificationKey(List<int> secretKey) async {
    assert(secretKey.length == 32);
    final h = await _sha512Signed(secretKey);
    final s = Int8List(ec.SCALAR_BYTES);
    ec.pruneScalar(h, 0, s);
    final vk = Int8List(32);
    ec.scalarMultBaseEncoded(s, vk, 0);
    return Uint8List.fromList(vk);
  }

  Future<bool> verify(
      List<int> signature, List<int> message, List<int> vk) async {
    assert(signature.length == 80);
    assert(vk.length == 32);
    final _vk = Int8List.fromList(vk);
    final gamma_str = Int8List.fromList(signature.sublist(0, ec.POINT_BYTES));
    final c = Int8List.fromList(
        signature.sublist(ec.POINT_BYTES, ec.POINT_BYTES + C_BYTES) +
            Int8List(ec.SCALAR_BYTES - C_BYTES));
    final s = Int8List.fromList(signature.sublist(ec.POINT_BYTES + C_BYTES));
    final H =
        await _hashToCurveTryAndIncrement(_vk, Int8List.fromList(message));
    final gamma = PointExt.create();
    final Y = PointExt.create();
    ec.decodePointVar(gamma_str, 0, false, gamma);
    ec.decodePointVar(_vk, 0, false, Y);
    final A = PointAccum.create();
    final B = PointAccum.create();
    final C = PointAccum.create();
    final D = PointAccum.create();
    final U = PointAccum.create();
    final V = PointAccum.create();
    final g = PointAccum.create();
    final t = PointExt.create();
    ec.scalarMultBase(s, A);
    ec.decodeScalar(c, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, Y, B);
    ec.decodeScalar(s, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, ec.pointCopyAccum(H.$1), C);
    ec.decodeScalar(c, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, gamma, D);
    ec.decodeScalar(oneScalar, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.pointAddVar2(true, ec.pointCopyAccum(A), ec.pointCopyAccum(B), t);
    ec.scalarMultStraussVar(nb, np, t, U);
    ec.pointAddVar2(true, ec.pointCopyAccum(C), ec.pointCopyAccum(D), t);
    ec.scalarMultStraussVar(nb, np, t, V);
    ec.scalarMultStraussVar(nb, np, gamma, g);
    final cp = await _hashPoints(H.$1, g, U, V);
    return c.sameElements(cp);
  }

  Future<Uint8List> sign(List<int> sk, List<int> message) async {
    assert(sk.length == 32);
    final x = await _pruneHash(sk);
    final pk = ec.createScalarMultBaseEncoded(x);
    final H = await _hashToCurveTryAndIncrement(pk, Int8List.fromList(message));
    final gamma = PointAccum.create();
    ec.decodeScalar(x, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, ec.pointCopyAccum(H.$1), gamma);
    final k = await _nonceGenerationRFC8032(sk, H.$2);
    assert(ec.checkScalarVar(k));
    final kB = PointAccum.create();
    final kH = PointAccum.create();
    ec.scalarMultBase(k, kB);
    ec.decodeScalar(k, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, ec.pointCopyAccum(H.$1), kH);
    final c = await _hashPoints(H.$1, gamma, kB, kH);
    final s = ec.calculateS(k, c, x);
    final gamma_str = Int8List(ec.POINT_BYTES);
    ec.encodePoint(gamma, gamma_str, 0);
    final pi = gamma_str + c.sublist(0, C_BYTES) + s;
    assert(pi.length == PI_BYTES);
    return Uint8List.fromList(pi);
  }

  Future<Uint8List> proofToHash(List<int> signature) async {
    assert(signature.length == 80);
    final gamma_str = Int8List.fromList(signature.sublist(0, ec.POINT_BYTES));
    final zero = [0x00];
    final three = [0x03];
    final gamma = PointExt.create();
    final cg = PointAccum.create();
    ec.decodePointVar(gamma_str, 0, false, gamma);
    ec.decodeScalar(cofactor, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, gamma, cg);
    final cg_enc = Int8List(ec.POINT_BYTES);
    ec.encodePoint(cg, cg_enc, 0);
    final input = <int>[]
      ..addAll(suite)
      ..addAll(three)
      ..addAll(cg_enc)
      ..addAll(zero);
    return await _sha512Unsigned(input);
  }

  _pruneHash(List<int> s) async {
    final h = await _sha512Signed(s);
    h[0] = (h[0] & 0xf8).toByte;
    h[ec.SCALAR_BYTES - 1] = (h[ec.SCALAR_BYTES - 1] & 0x7f).toByte;
    h[ec.SCALAR_BYTES - 1] = (h[ec.SCALAR_BYTES - 1] | 0x40).toByte;
    return h;
  }

  Future<(PointAccum, Int8List)> _hashToCurveTryAndIncrement(
      Int8List Y, Int8List a) async {
    int ctr = 0;
    final hash = Int8List(ec.POINT_BYTES);
    final H = PointExt.create();
    final HR = PointAccum.create();
    bool isPoint = false;
    while (!isPoint) {
      final ctr_byte = [ctr.toByte];
      final input = <int>[]
        ..addAll(suite)
        ..add(0x01)
        ..addAll(Y)
        ..addAll(a)
        ..addAll(ctr_byte)
        ..add(0x00);
      final output = await _sha512Signed(input);
      for (int i = 0; i < ec.POINT_BYTES; i++) hash[i] = output[i];
      isPoint = ec.decodePointVar(hash, 0, false, H);
      if (isPoint) {
        isPoint = !_isNeutralPoint(H);
      }
      ctr += 1;
    }

    ec.decodeScalar(cofactor, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, H, HR);
    ec.encodePoint(HR, hash, 0);
    return (HR, hash);
  }

  _isNeutralPoint(PointExt p) {
    final pBytes = Int8List(ec.POINT_BYTES);
    final pA = PointAccum.create();
    ec.decodeScalar(oneScalar, 0, np);
    ec.decodeScalar(zeroScalar, 0, nb);
    ec.scalarMultStraussVar(nb, np, p, pA);
    ec.encodePoint(pA, pBytes, 0);
    return pBytes.sameElements(neutralPointBytes);
  }

  _nonceGenerationRFC8032(List<int> sk, List<int> h) async {
    final sk_hash = await _sha512Signed(sk);
    final trunc_hashed_sk = <int>[]
      ..addAll(sk_hash.sublist(ec.SCALAR_BYTES))
      ..addAll(h);
    final out = await _sha512Signed(trunc_hashed_sk);
    return ec.reduceScalar(out);
  }

  Future<Int8List> _hashPoints(
      PointAccum p1, PointAccum p2, PointAccum p3, PointAccum p4) async {
    final zero = const [0x00];
    final two = const [0x02];
    final str = [...suite, ...two];
    final r = Int8List(ec.POINT_BYTES);
    ec.encodePoint(p1, r, 0);
    str.addAll(r);
    ec.encodePoint(p2, r, 0);
    str.addAll(r);
    ec.encodePoint(p3, r, 0);
    str.addAll(r);
    ec.encodePoint(p4, r, 0);
    str.addAll(r);
    str.addAll(zero);
    final out = await _sha512Signed(str);
    return Int8List.fromList(
        out.sublist(0, C_BYTES) + Int8List(ec.SCALAR_BYTES - C_BYTES));
  }

  Future<Int8List> _sha512Signed(List<int> input) async {
    final o1 = (await Sha512().hash(input)).bytes;
    return Uint8List.fromList(o1).int8List;
  }

  Future<Uint8List> _sha512Unsigned(List<int> input) async {
    final o1 = (await Sha512().hash(input)).bytes;
    return Uint8List.fromList(o1);
  }
}

class Ed25519VRFKeyPair {
  final Uint8List sk;
  final Uint8List vk;

  Ed25519VRFKeyPair({required this.sk, required this.vk});
}

final _impl = Ed25519VRFImpl();

Ed25519VRF ed25519Vrf = _impl;

final _generateKeyPair = _impl.generateKeyPair;
final _generateKeyPairFromSeed = _impl.generateKeyPairFromSeed;
final _getVerificationKey = _impl.getVerificationKey;
final _verify = _impl.verify;
final _sign = _impl.sign;
final _proofToHash = _impl.proofToHash;

class Ed25519VRFIsolated extends Ed25519VRF {
  final DComputeImpl _compute;

  Ed25519VRFIsolated(this._compute);

  @override
  Future<Ed25519VRFKeyPair> generateKeyPair() =>
      _compute((v) => _generateKeyPair(), "");

  @override
  Future<Ed25519VRFKeyPair> generateKeyPairFromSeed(List<int> seed) =>
      _compute(_generateKeyPairFromSeed, seed);

  @override
  Future<Uint8List> getVerificationKey(List<int> secretKey) =>
      _compute(_getVerificationKey, secretKey);

  @override
  Future<Uint8List> proofToHash(List<int> signature) =>
      _compute(_proofToHash, signature);

  @override
  Future<Uint8List> sign(List<int> sk, List<int> message) =>
      _compute((t) => _sign(t.$1, t.$2), (sk, message));

  @override
  Future<bool> verify(List<int> signature, List<int> message, List<int> vk) =>
      _compute(
          (t) => _verify(t.$1.$1, t.$1.$2, t.$2), ((signature, message), vk));
}

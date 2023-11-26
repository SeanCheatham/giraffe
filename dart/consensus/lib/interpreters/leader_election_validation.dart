import 'dart:typed_data';

import 'package:blockchain_common/models/common.dart';
import 'package:blockchain_common/utils.dart';
import 'package:blockchain_consensus/algebras/leader_election_validation_algebra.dart';
import 'package:blockchain_consensus/models/vrf_config.dart';
import 'package:blockchain_consensus/numeric_utils.dart';
import 'package:blockchain_consensus/utils.dart';
import 'package:blockchain_crypto/utils.dart';
import 'package:rational/rational.dart';
import 'package:fixnum/fixnum.dart';

class LeaderElectionValidation extends LeaderElectionValidationAlgebra {
  final VrfConfig config;
  DComputeImpl _compute;

  LeaderElectionValidation(this.config, this._compute);

  @override
  Future<Rational> getThreshold(Rational relativeStake, Int64 slotDiff) =>
      _compute((t) => _getThreshold(t.$1.$1, t.$1.$2, t.$2),
          ((relativeStake, slotDiff), config));

  @override
  Future<bool> isSlotLeaderForThreshold(Rational threshold, Rho rho) =>
      _compute((t) => _isSlotLeaderForThreshold(t.$1, t.$2), (threshold, rho));
}

final NormalizationConstant = BigInt.from(2).pow(512);

final _thresholdCache = <(Rational, Int64), Rational>{};

Future<Rational> _getThreshold(
    Rational relativeStake, Int64 slotDiff, VrfConfig config) async {
  final cacheKey = (relativeStake, slotDiff);
  final previous = _thresholdCache[cacheKey];
  if (previous != null) return previous;
  final difficultyCurve = (slotDiff > config.lddCutoff)
      ? config.baselineDifficulty
      : (Rational(slotDiff.toBigInt, BigInt.from(config.lddCutoff)) *
          config.amplitude);

  if (difficultyCurve == Rational.one) {
    _thresholdCache[cacheKey] = difficultyCurve;
    return difficultyCurve;
  } else {
    final coefficient = log1p(Rational.fromInt(-1) * difficultyCurve);
    final expResult = exp(coefficient * relativeStake);
    final result = Rational.one - expResult;
    _thresholdCache[cacheKey] = result;
    return result;
  }
}

Future<bool> _isSlotLeaderForThreshold(Rational threshold, Rho rho) async {
  final testRhoHashBytes = rho.rhoTestHash;
  final numeratorBytes = Int8List(65)
    ..[0] = 0x00
    ..setRange(1, testRhoHashBytes.length + 1, testRhoHashBytes);
  final numerator = numeratorBytes.toBigInt;
  final test = Rational(numerator, NormalizationConstant);
  return threshold > test;
}

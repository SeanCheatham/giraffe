//
//  Generated code. Do not modify.
//  source: models/core.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class BlockId extends $pb.GeneratedMessage {
  factory BlockId() => create();
  BlockId._() : super();
  factory BlockId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BlockId', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockId clone() => BlockId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockId copyWith(void Function(BlockId) updates) => super.copyWith((message) => updates(message as BlockId)) as BlockId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlockId create() => BlockId._();
  BlockId createEmptyInstance() => create();
  static $pb.PbList<BlockId> createRepeated() => $pb.PbList<BlockId>();
  @$core.pragma('dart2js:noInline')
  static BlockId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockId>(create);
  static BlockId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class BlockHeader extends $pb.GeneratedMessage {
  factory BlockHeader() => create();
  BlockHeader._() : super();
  factory BlockHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BlockHeader', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<BlockId>(1, _omitFieldNames ? '' : 'parentHeaderId', protoName: 'parentHeaderId', subBuilder: BlockId.create)
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'parentSlot', $pb.PbFieldType.OU6, protoName: 'parentSlot', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'txRoot', $pb.PbFieldType.OY, protoName: 'txRoot')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'bloomFilter', $pb.PbFieldType.OY, protoName: 'bloomFilter')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'slot', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<EligibilityCertificate>(8, _omitFieldNames ? '' : 'eligibilityCertificate', protoName: 'eligibilityCertificate', subBuilder: EligibilityCertificate.create)
    ..aOM<OperationalCertificate>(9, _omitFieldNames ? '' : 'operationalCertificate', protoName: 'operationalCertificate', subBuilder: OperationalCertificate.create)
    ..a<$core.List<$core.int>>(10, _omitFieldNames ? '' : 'metadata', $pb.PbFieldType.OY)
    ..aOM<StakingAddress>(11, _omitFieldNames ? '' : 'address', subBuilder: StakingAddress.create)
    ..aOM<BlockId>(12, _omitFieldNames ? '' : 'headerId', protoName: 'headerId', subBuilder: BlockId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockHeader clone() => BlockHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockHeader copyWith(void Function(BlockHeader) updates) => super.copyWith((message) => updates(message as BlockHeader)) as BlockHeader;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlockHeader create() => BlockHeader._();
  BlockHeader createEmptyInstance() => create();
  static $pb.PbList<BlockHeader> createRepeated() => $pb.PbList<BlockHeader>();
  @$core.pragma('dart2js:noInline')
  static BlockHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockHeader>(create);
  static BlockHeader? _defaultInstance;

  @$pb.TagNumber(1)
  BlockId get parentHeaderId => $_getN(0);
  @$pb.TagNumber(1)
  set parentHeaderId(BlockId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParentHeaderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParentHeaderId() => clearField(1);
  @$pb.TagNumber(1)
  BlockId ensureParentHeaderId() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get parentSlot => $_getI64(1);
  @$pb.TagNumber(2)
  set parentSlot($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentSlot() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentSlot() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get txRoot => $_getN(2);
  @$pb.TagNumber(3)
  set txRoot($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxRoot() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get bloomFilter => $_getN(3);
  @$pb.TagNumber(4)
  set bloomFilter($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBloomFilter() => $_has(3);
  @$pb.TagNumber(4)
  void clearBloomFilter() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestamp => $_getI64(4);
  @$pb.TagNumber(5)
  set timestamp($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestamp() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestamp() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get height => $_getI64(5);
  @$pb.TagNumber(6)
  set height($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeight() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get slot => $_getI64(6);
  @$pb.TagNumber(7)
  set slot($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSlot() => $_has(6);
  @$pb.TagNumber(7)
  void clearSlot() => clearField(7);

  @$pb.TagNumber(8)
  EligibilityCertificate get eligibilityCertificate => $_getN(7);
  @$pb.TagNumber(8)
  set eligibilityCertificate(EligibilityCertificate v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasEligibilityCertificate() => $_has(7);
  @$pb.TagNumber(8)
  void clearEligibilityCertificate() => clearField(8);
  @$pb.TagNumber(8)
  EligibilityCertificate ensureEligibilityCertificate() => $_ensure(7);

  @$pb.TagNumber(9)
  OperationalCertificate get operationalCertificate => $_getN(8);
  @$pb.TagNumber(9)
  set operationalCertificate(OperationalCertificate v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasOperationalCertificate() => $_has(8);
  @$pb.TagNumber(9)
  void clearOperationalCertificate() => clearField(9);
  @$pb.TagNumber(9)
  OperationalCertificate ensureOperationalCertificate() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<$core.int> get metadata => $_getN(9);
  @$pb.TagNumber(10)
  set metadata($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMetadata() => $_has(9);
  @$pb.TagNumber(10)
  void clearMetadata() => clearField(10);

  @$pb.TagNumber(11)
  StakingAddress get address => $_getN(10);
  @$pb.TagNumber(11)
  set address(StakingAddress v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasAddress() => $_has(10);
  @$pb.TagNumber(11)
  void clearAddress() => clearField(11);
  @$pb.TagNumber(11)
  StakingAddress ensureAddress() => $_ensure(10);

  @$pb.TagNumber(12)
  BlockId get headerId => $_getN(11);
  @$pb.TagNumber(12)
  set headerId(BlockId v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasHeaderId() => $_has(11);
  @$pb.TagNumber(12)
  void clearHeaderId() => clearField(12);
  @$pb.TagNumber(12)
  BlockId ensureHeaderId() => $_ensure(11);
}

class EligibilityCertificate extends $pb.GeneratedMessage {
  factory EligibilityCertificate() => create();
  EligibilityCertificate._() : super();
  factory EligibilityCertificate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EligibilityCertificate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EligibilityCertificate', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'vrfSig', $pb.PbFieldType.OY, protoName: 'vrfSig')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'vrfVK', $pb.PbFieldType.OY, protoName: 'vrfVK')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'thresholdEvidence', $pb.PbFieldType.OY, protoName: 'thresholdEvidence')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'eta', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EligibilityCertificate clone() => EligibilityCertificate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EligibilityCertificate copyWith(void Function(EligibilityCertificate) updates) => super.copyWith((message) => updates(message as EligibilityCertificate)) as EligibilityCertificate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EligibilityCertificate create() => EligibilityCertificate._();
  EligibilityCertificate createEmptyInstance() => create();
  static $pb.PbList<EligibilityCertificate> createRepeated() => $pb.PbList<EligibilityCertificate>();
  @$core.pragma('dart2js:noInline')
  static EligibilityCertificate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EligibilityCertificate>(create);
  static EligibilityCertificate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get vrfSig => $_getN(0);
  @$pb.TagNumber(1)
  set vrfSig($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVrfSig() => $_has(0);
  @$pb.TagNumber(1)
  void clearVrfSig() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get vrfVK => $_getN(1);
  @$pb.TagNumber(2)
  set vrfVK($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVrfVK() => $_has(1);
  @$pb.TagNumber(2)
  void clearVrfVK() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get thresholdEvidence => $_getN(2);
  @$pb.TagNumber(3)
  set thresholdEvidence($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasThresholdEvidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearThresholdEvidence() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get eta => $_getN(3);
  @$pb.TagNumber(4)
  set eta($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEta() => $_has(3);
  @$pb.TagNumber(4)
  void clearEta() => clearField(4);
}

class OperationalCertificate extends $pb.GeneratedMessage {
  factory OperationalCertificate() => create();
  OperationalCertificate._() : super();
  factory OperationalCertificate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OperationalCertificate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OperationalCertificate', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<VerificationKeyKesProduct>(1, _omitFieldNames ? '' : 'parentVK', protoName: 'parentVK', subBuilder: VerificationKeyKesProduct.create)
    ..aOM<SignatureKesProduct>(2, _omitFieldNames ? '' : 'parentSignature', protoName: 'parentSignature', subBuilder: SignatureKesProduct.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'childVK', $pb.PbFieldType.OY, protoName: 'childVK')
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'childSignature', $pb.PbFieldType.OY, protoName: 'childSignature')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OperationalCertificate clone() => OperationalCertificate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OperationalCertificate copyWith(void Function(OperationalCertificate) updates) => super.copyWith((message) => updates(message as OperationalCertificate)) as OperationalCertificate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OperationalCertificate create() => OperationalCertificate._();
  OperationalCertificate createEmptyInstance() => create();
  static $pb.PbList<OperationalCertificate> createRepeated() => $pb.PbList<OperationalCertificate>();
  @$core.pragma('dart2js:noInline')
  static OperationalCertificate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OperationalCertificate>(create);
  static OperationalCertificate? _defaultInstance;

  @$pb.TagNumber(1)
  VerificationKeyKesProduct get parentVK => $_getN(0);
  @$pb.TagNumber(1)
  set parentVK(VerificationKeyKesProduct v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParentVK() => $_has(0);
  @$pb.TagNumber(1)
  void clearParentVK() => clearField(1);
  @$pb.TagNumber(1)
  VerificationKeyKesProduct ensureParentVK() => $_ensure(0);

  @$pb.TagNumber(2)
  SignatureKesProduct get parentSignature => $_getN(1);
  @$pb.TagNumber(2)
  set parentSignature(SignatureKesProduct v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentSignature() => clearField(2);
  @$pb.TagNumber(2)
  SignatureKesProduct ensureParentSignature() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get childVK => $_getN(2);
  @$pb.TagNumber(3)
  set childVK($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChildVK() => $_has(2);
  @$pb.TagNumber(3)
  void clearChildVK() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get childSignature => $_getN(3);
  @$pb.TagNumber(4)
  set childSignature($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChildSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearChildSignature() => clearField(4);
}

class VerificationKeyKesProduct extends $pb.GeneratedMessage {
  factory VerificationKeyKesProduct() => create();
  VerificationKeyKesProduct._() : super();
  factory VerificationKeyKesProduct.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationKeyKesProduct.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerificationKeyKesProduct', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'step', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationKeyKesProduct clone() => VerificationKeyKesProduct()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationKeyKesProduct copyWith(void Function(VerificationKeyKesProduct) updates) => super.copyWith((message) => updates(message as VerificationKeyKesProduct)) as VerificationKeyKesProduct;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerificationKeyKesProduct create() => VerificationKeyKesProduct._();
  VerificationKeyKesProduct createEmptyInstance() => create();
  static $pb.PbList<VerificationKeyKesProduct> createRepeated() => $pb.PbList<VerificationKeyKesProduct>();
  @$core.pragma('dart2js:noInline')
  static VerificationKeyKesProduct getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationKeyKesProduct>(create);
  static VerificationKeyKesProduct? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get step => $_getIZ(1);
  @$pb.TagNumber(2)
  set step($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStep() => $_has(1);
  @$pb.TagNumber(2)
  void clearStep() => clearField(2);
}

class SignatureKesSum extends $pb.GeneratedMessage {
  factory SignatureKesSum() => create();
  SignatureKesSum._() : super();
  factory SignatureKesSum.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureKesSum.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignatureKesSum', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'verificationKey', $pb.PbFieldType.OY, protoName: 'verificationKey')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'witness', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureKesSum clone() => SignatureKesSum()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureKesSum copyWith(void Function(SignatureKesSum) updates) => super.copyWith((message) => updates(message as SignatureKesSum)) as SignatureKesSum;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignatureKesSum create() => SignatureKesSum._();
  SignatureKesSum createEmptyInstance() => create();
  static $pb.PbList<SignatureKesSum> createRepeated() => $pb.PbList<SignatureKesSum>();
  @$core.pragma('dart2js:noInline')
  static SignatureKesSum getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureKesSum>(create);
  static SignatureKesSum? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get verificationKey => $_getN(0);
  @$pb.TagNumber(1)
  set verificationKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerificationKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerificationKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get signature => $_getN(1);
  @$pb.TagNumber(2)
  set signature($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.List<$core.int>> get witness => $_getList(2);
}

class SignatureKesProduct extends $pb.GeneratedMessage {
  factory SignatureKesProduct() => create();
  SignatureKesProduct._() : super();
  factory SignatureKesProduct.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignatureKesProduct.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignatureKesProduct', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<SignatureKesSum>(1, _omitFieldNames ? '' : 'superSignature', protoName: 'superSignature', subBuilder: SignatureKesSum.create)
    ..aOM<SignatureKesSum>(2, _omitFieldNames ? '' : 'subSignature', protoName: 'subSignature', subBuilder: SignatureKesSum.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'subRoot', $pb.PbFieldType.OY, protoName: 'subRoot')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignatureKesProduct clone() => SignatureKesProduct()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignatureKesProduct copyWith(void Function(SignatureKesProduct) updates) => super.copyWith((message) => updates(message as SignatureKesProduct)) as SignatureKesProduct;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignatureKesProduct create() => SignatureKesProduct._();
  SignatureKesProduct createEmptyInstance() => create();
  static $pb.PbList<SignatureKesProduct> createRepeated() => $pb.PbList<SignatureKesProduct>();
  @$core.pragma('dart2js:noInline')
  static SignatureKesProduct getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignatureKesProduct>(create);
  static SignatureKesProduct? _defaultInstance;

  @$pb.TagNumber(1)
  SignatureKesSum get superSignature => $_getN(0);
  @$pb.TagNumber(1)
  set superSignature(SignatureKesSum v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuperSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuperSignature() => clearField(1);
  @$pb.TagNumber(1)
  SignatureKesSum ensureSuperSignature() => $_ensure(0);

  @$pb.TagNumber(2)
  SignatureKesSum get subSignature => $_getN(1);
  @$pb.TagNumber(2)
  set subSignature(SignatureKesSum v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubSignature() => clearField(2);
  @$pb.TagNumber(2)
  SignatureKesSum ensureSubSignature() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get subRoot => $_getN(2);
  @$pb.TagNumber(3)
  set subRoot($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubRoot() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubRoot() => clearField(3);
}

class SlotData extends $pb.GeneratedMessage {
  factory SlotData() => create();
  SlotData._() : super();
  factory SlotData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlotData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SlotData', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<SlotId>(1, _omitFieldNames ? '' : 'slotId', protoName: 'slotId', subBuilder: SlotId.create)
    ..aOM<SlotId>(2, _omitFieldNames ? '' : 'parentSlotId', protoName: 'parentSlotId', subBuilder: SlotId.create)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'rho', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'eta', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlotData clone() => SlotData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlotData copyWith(void Function(SlotData) updates) => super.copyWith((message) => updates(message as SlotData)) as SlotData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SlotData create() => SlotData._();
  SlotData createEmptyInstance() => create();
  static $pb.PbList<SlotData> createRepeated() => $pb.PbList<SlotData>();
  @$core.pragma('dart2js:noInline')
  static SlotData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlotData>(create);
  static SlotData? _defaultInstance;

  @$pb.TagNumber(1)
  SlotId get slotId => $_getN(0);
  @$pb.TagNumber(1)
  set slotId(SlotId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSlotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlotId() => clearField(1);
  @$pb.TagNumber(1)
  SlotId ensureSlotId() => $_ensure(0);

  @$pb.TagNumber(2)
  SlotId get parentSlotId => $_getN(1);
  @$pb.TagNumber(2)
  set parentSlotId(SlotId v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParentSlotId() => $_has(1);
  @$pb.TagNumber(2)
  void clearParentSlotId() => clearField(2);
  @$pb.TagNumber(2)
  SlotId ensureParentSlotId() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get rho => $_getN(2);
  @$pb.TagNumber(3)
  set rho($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRho() => $_has(2);
  @$pb.TagNumber(3)
  void clearRho() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get eta => $_getN(3);
  @$pb.TagNumber(4)
  set eta($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEta() => $_has(3);
  @$pb.TagNumber(4)
  void clearEta() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get height => $_getI64(4);
  @$pb.TagNumber(5)
  set height($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeight() => clearField(5);
}

class SlotId extends $pb.GeneratedMessage {
  factory SlotId() => create();
  SlotId._() : super();
  factory SlotId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SlotId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SlotId', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'slot', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<BlockId>(2, _omitFieldNames ? '' : 'blockId', protoName: 'blockId', subBuilder: BlockId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SlotId clone() => SlotId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SlotId copyWith(void Function(SlotId) updates) => super.copyWith((message) => updates(message as SlotId)) as SlotId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SlotId create() => SlotId._();
  SlotId createEmptyInstance() => create();
  static $pb.PbList<SlotId> createRepeated() => $pb.PbList<SlotId>();
  @$core.pragma('dart2js:noInline')
  static SlotId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SlotId>(create);
  static SlotId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get slot => $_getI64(0);
  @$pb.TagNumber(1)
  set slot($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSlot() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlot() => clearField(1);

  @$pb.TagNumber(2)
  BlockId get blockId => $_getN(1);
  @$pb.TagNumber(2)
  set blockId(BlockId v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockId() => clearField(2);
  @$pb.TagNumber(2)
  BlockId ensureBlockId() => $_ensure(1);
}

class StakingAddress extends $pb.GeneratedMessage {
  factory StakingAddress() => create();
  StakingAddress._() : super();
  factory StakingAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StakingAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StakingAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StakingAddress clone() => StakingAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StakingAddress copyWith(void Function(StakingAddress) updates) => super.copyWith((message) => updates(message as StakingAddress)) as StakingAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StakingAddress create() => StakingAddress._();
  StakingAddress createEmptyInstance() => create();
  static $pb.PbList<StakingAddress> createRepeated() => $pb.PbList<StakingAddress>();
  @$core.pragma('dart2js:noInline')
  static StakingAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StakingAddress>(create);
  static StakingAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class BlockBody extends $pb.GeneratedMessage {
  factory BlockBody() => create();
  BlockBody._() : super();
  factory BlockBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BlockBody', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..pc<TransactionId>(1, _omitFieldNames ? '' : 'transactionIds', $pb.PbFieldType.PM, protoName: 'transactionIds', subBuilder: TransactionId.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockBody clone() => BlockBody()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockBody copyWith(void Function(BlockBody) updates) => super.copyWith((message) => updates(message as BlockBody)) as BlockBody;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlockBody create() => BlockBody._();
  BlockBody createEmptyInstance() => create();
  static $pb.PbList<BlockBody> createRepeated() => $pb.PbList<BlockBody>();
  @$core.pragma('dart2js:noInline')
  static BlockBody getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockBody>(create);
  static BlockBody? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransactionId> get transactionIds => $_getList(0);
}

class FullBlockBody extends $pb.GeneratedMessage {
  factory FullBlockBody() => create();
  FullBlockBody._() : super();
  factory FullBlockBody.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FullBlockBody.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FullBlockBody', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..pc<Transaction>(1, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: Transaction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FullBlockBody clone() => FullBlockBody()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FullBlockBody copyWith(void Function(FullBlockBody) updates) => super.copyWith((message) => updates(message as FullBlockBody)) as FullBlockBody;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FullBlockBody create() => FullBlockBody._();
  FullBlockBody createEmptyInstance() => create();
  static $pb.PbList<FullBlockBody> createRepeated() => $pb.PbList<FullBlockBody>();
  @$core.pragma('dart2js:noInline')
  static FullBlockBody getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FullBlockBody>(create);
  static FullBlockBody? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Transaction> get transactions => $_getList(0);
}

class Block extends $pb.GeneratedMessage {
  factory Block() => create();
  Block._() : super();
  factory Block.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Block.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Block', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<BlockHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: BlockHeader.create)
    ..aOM<BlockBody>(2, _omitFieldNames ? '' : 'body', subBuilder: BlockBody.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Block clone() => Block()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Block copyWith(void Function(Block) updates) => super.copyWith((message) => updates(message as Block)) as Block;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Block create() => Block._();
  Block createEmptyInstance() => create();
  static $pb.PbList<Block> createRepeated() => $pb.PbList<Block>();
  @$core.pragma('dart2js:noInline')
  static Block getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Block>(create);
  static Block? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  BlockBody get body => $_getN(1);
  @$pb.TagNumber(2)
  set body(BlockBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => clearField(2);
  @$pb.TagNumber(2)
  BlockBody ensureBody() => $_ensure(1);
}

class FullBlock extends $pb.GeneratedMessage {
  factory FullBlock() => create();
  FullBlock._() : super();
  factory FullBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FullBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FullBlock', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<BlockHeader>(1, _omitFieldNames ? '' : 'header', subBuilder: BlockHeader.create)
    ..aOM<FullBlockBody>(2, _omitFieldNames ? '' : 'fullBody', protoName: 'fullBody', subBuilder: FullBlockBody.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FullBlock clone() => FullBlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FullBlock copyWith(void Function(FullBlock) updates) => super.copyWith((message) => updates(message as FullBlock)) as FullBlock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FullBlock create() => FullBlock._();
  FullBlock createEmptyInstance() => create();
  static $pb.PbList<FullBlock> createRepeated() => $pb.PbList<FullBlock>();
  @$core.pragma('dart2js:noInline')
  static FullBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FullBlock>(create);
  static FullBlock? _defaultInstance;

  @$pb.TagNumber(1)
  BlockHeader get header => $_getN(0);
  @$pb.TagNumber(1)
  set header(BlockHeader v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeader() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeader() => clearField(1);
  @$pb.TagNumber(1)
  BlockHeader ensureHeader() => $_ensure(0);

  @$pb.TagNumber(2)
  FullBlockBody get fullBody => $_getN(1);
  @$pb.TagNumber(2)
  set fullBody(FullBlockBody v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullBody() => clearField(2);
  @$pb.TagNumber(2)
  FullBlockBody ensureFullBody() => $_ensure(1);
}

class TransactionId extends $pb.GeneratedMessage {
  factory TransactionId() => create();
  TransactionId._() : super();
  factory TransactionId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionId', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionId clone() => TransactionId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionId copyWith(void Function(TransactionId) updates) => super.copyWith((message) => updates(message as TransactionId)) as TransactionId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionId create() => TransactionId._();
  TransactionId createEmptyInstance() => create();
  static $pb.PbList<TransactionId> createRepeated() => $pb.PbList<TransactionId>();
  @$core.pragma('dart2js:noInline')
  static TransactionId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionId>(create);
  static TransactionId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Transaction extends $pb.GeneratedMessage {
  factory Transaction() => create();
  Transaction._() : super();
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Transaction', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..pc<TransactionInput>(1, _omitFieldNames ? '' : 'inputs', $pb.PbFieldType.PM, subBuilder: TransactionInput.create)
    ..pc<TransactionOutput>(2, _omitFieldNames ? '' : 'outputs', $pb.PbFieldType.PM, subBuilder: TransactionOutput.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction clone() => Transaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction)) as Transaction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransactionInput> get inputs => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TransactionOutput> get outputs => $_getList(1);
}

class TransactionInput extends $pb.GeneratedMessage {
  factory TransactionInput() => create();
  TransactionInput._() : super();
  factory TransactionInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionInput', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<TransactionOutputReference>(1, _omitFieldNames ? '' : 'reference', subBuilder: TransactionOutputReference.create)
    ..aOM<Lock>(2, _omitFieldNames ? '' : 'lock', subBuilder: Lock.create)
    ..aOM<Key>(3, _omitFieldNames ? '' : 'key', subBuilder: Key.create)
    ..aOM<Value>(4, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionInput clone() => TransactionInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionInput copyWith(void Function(TransactionInput) updates) => super.copyWith((message) => updates(message as TransactionInput)) as TransactionInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionInput create() => TransactionInput._();
  TransactionInput createEmptyInstance() => create();
  static $pb.PbList<TransactionInput> createRepeated() => $pb.PbList<TransactionInput>();
  @$core.pragma('dart2js:noInline')
  static TransactionInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionInput>(create);
  static TransactionInput? _defaultInstance;

  @$pb.TagNumber(1)
  TransactionOutputReference get reference => $_getN(0);
  @$pb.TagNumber(1)
  set reference(TransactionOutputReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasReference() => $_has(0);
  @$pb.TagNumber(1)
  void clearReference() => clearField(1);
  @$pb.TagNumber(1)
  TransactionOutputReference ensureReference() => $_ensure(0);

  @$pb.TagNumber(2)
  Lock get lock => $_getN(1);
  @$pb.TagNumber(2)
  set lock(Lock v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLock() => $_has(1);
  @$pb.TagNumber(2)
  void clearLock() => clearField(2);
  @$pb.TagNumber(2)
  Lock ensureLock() => $_ensure(1);

  @$pb.TagNumber(3)
  Key get key => $_getN(2);
  @$pb.TagNumber(3)
  set key(Key v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);
  @$pb.TagNumber(3)
  Key ensureKey() => $_ensure(2);

  @$pb.TagNumber(4)
  Value get value => $_getN(3);
  @$pb.TagNumber(4)
  set value(Value v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  Value ensureValue() => $_ensure(3);
}

class TransactionOutputReference extends $pb.GeneratedMessage {
  factory TransactionOutputReference() => create();
  TransactionOutputReference._() : super();
  factory TransactionOutputReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionOutputReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionOutputReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<TransactionId>(1, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId', subBuilder: TransactionId.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionOutputReference clone() => TransactionOutputReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionOutputReference copyWith(void Function(TransactionOutputReference) updates) => super.copyWith((message) => updates(message as TransactionOutputReference)) as TransactionOutputReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionOutputReference create() => TransactionOutputReference._();
  TransactionOutputReference createEmptyInstance() => create();
  static $pb.PbList<TransactionOutputReference> createRepeated() => $pb.PbList<TransactionOutputReference>();
  @$core.pragma('dart2js:noInline')
  static TransactionOutputReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionOutputReference>(create);
  static TransactionOutputReference? _defaultInstance;

  @$pb.TagNumber(1)
  TransactionId get transactionId => $_getN(0);
  @$pb.TagNumber(1)
  set transactionId(TransactionId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => clearField(1);
  @$pb.TagNumber(1)
  TransactionId ensureTransactionId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class TransactionOutput extends $pb.GeneratedMessage {
  factory TransactionOutput() => create();
  TransactionOutput._() : super();
  factory TransactionOutput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionOutput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionOutput', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<LockAddress>(1, _omitFieldNames ? '' : 'lockAddress', protoName: 'lockAddress', subBuilder: LockAddress.create)
    ..aOM<Value>(2, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionOutput clone() => TransactionOutput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionOutput copyWith(void Function(TransactionOutput) updates) => super.copyWith((message) => updates(message as TransactionOutput)) as TransactionOutput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionOutput create() => TransactionOutput._();
  TransactionOutput createEmptyInstance() => create();
  static $pb.PbList<TransactionOutput> createRepeated() => $pb.PbList<TransactionOutput>();
  @$core.pragma('dart2js:noInline')
  static TransactionOutput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionOutput>(create);
  static TransactionOutput? _defaultInstance;

  @$pb.TagNumber(1)
  LockAddress get lockAddress => $_getN(0);
  @$pb.TagNumber(1)
  set lockAddress(LockAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLockAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearLockAddress() => clearField(1);
  @$pb.TagNumber(1)
  LockAddress ensureLockAddress() => $_ensure(0);

  @$pb.TagNumber(2)
  Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Value v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  Value ensureValue() => $_ensure(1);
}

class Value extends $pb.GeneratedMessage {
  factory Value() => create();
  Value._() : super();
  factory Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Value', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<StakingRegistration>(2, _omitFieldNames ? '' : 'registration', subBuilder: StakingRegistration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Value clone() => Value()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Value copyWith(void Function(Value) updates) => super.copyWith((message) => updates(message as Value)) as Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get quantity => $_getI64(0);
  @$pb.TagNumber(1)
  set quantity($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuantity() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuantity() => clearField(1);

  @$pb.TagNumber(2)
  StakingRegistration get registration => $_getN(1);
  @$pb.TagNumber(2)
  set registration(StakingRegistration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistration() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistration() => clearField(2);
  @$pb.TagNumber(2)
  StakingRegistration ensureRegistration() => $_ensure(1);
}

class StakingRegistration extends $pb.GeneratedMessage {
  factory StakingRegistration() => create();
  StakingRegistration._() : super();
  factory StakingRegistration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StakingRegistration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StakingRegistration', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<SignatureKesProduct>(1, _omitFieldNames ? '' : 'signature', subBuilder: SignatureKesProduct.create)
    ..aOM<StakingAddress>(2, _omitFieldNames ? '' : 'stakingAddress', protoName: 'stakingAddress', subBuilder: StakingAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StakingRegistration clone() => StakingRegistration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StakingRegistration copyWith(void Function(StakingRegistration) updates) => super.copyWith((message) => updates(message as StakingRegistration)) as StakingRegistration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StakingRegistration create() => StakingRegistration._();
  StakingRegistration createEmptyInstance() => create();
  static $pb.PbList<StakingRegistration> createRepeated() => $pb.PbList<StakingRegistration>();
  @$core.pragma('dart2js:noInline')
  static StakingRegistration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StakingRegistration>(create);
  static StakingRegistration? _defaultInstance;

  @$pb.TagNumber(1)
  SignatureKesProduct get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature(SignatureKesProduct v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
  @$pb.TagNumber(1)
  SignatureKesProduct ensureSignature() => $_ensure(0);

  @$pb.TagNumber(2)
  StakingAddress get stakingAddress => $_getN(1);
  @$pb.TagNumber(2)
  set stakingAddress(StakingAddress v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStakingAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearStakingAddress() => clearField(2);
  @$pb.TagNumber(2)
  StakingAddress ensureStakingAddress() => $_ensure(1);
}

class ActiveStaker extends $pb.GeneratedMessage {
  factory ActiveStaker() => create();
  ActiveStaker._() : super();
  factory ActiveStaker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ActiveStaker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActiveStaker', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..aOM<StakingRegistration>(1, _omitFieldNames ? '' : 'registration', subBuilder: StakingRegistration.create)
    ..aInt64(3, _omitFieldNames ? '' : 'quantity')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ActiveStaker clone() => ActiveStaker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ActiveStaker copyWith(void Function(ActiveStaker) updates) => super.copyWith((message) => updates(message as ActiveStaker)) as ActiveStaker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActiveStaker create() => ActiveStaker._();
  ActiveStaker createEmptyInstance() => create();
  static $pb.PbList<ActiveStaker> createRepeated() => $pb.PbList<ActiveStaker>();
  @$core.pragma('dart2js:noInline')
  static ActiveStaker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActiveStaker>(create);
  static ActiveStaker? _defaultInstance;

  @$pb.TagNumber(1)
  StakingRegistration get registration => $_getN(0);
  @$pb.TagNumber(1)
  set registration(StakingRegistration v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRegistration() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegistration() => clearField(1);
  @$pb.TagNumber(1)
  StakingRegistration ensureRegistration() => $_ensure(0);

  @$pb.TagNumber(3)
  $fixnum.Int64 get quantity => $_getI64(1);
  @$pb.TagNumber(3)
  set quantity($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);
}

class LockAddress extends $pb.GeneratedMessage {
  factory LockAddress() => create();
  LockAddress._() : super();
  factory LockAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LockAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LockAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LockAddress clone() => LockAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LockAddress copyWith(void Function(LockAddress) updates) => super.copyWith((message) => updates(message as LockAddress)) as LockAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LockAddress create() => LockAddress._();
  LockAddress createEmptyInstance() => create();
  static $pb.PbList<LockAddress> createRepeated() => $pb.PbList<LockAddress>();
  @$core.pragma('dart2js:noInline')
  static LockAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LockAddress>(create);
  static LockAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Lock_Ed25519 extends $pb.GeneratedMessage {
  factory Lock_Ed25519() => create();
  Lock_Ed25519._() : super();
  factory Lock_Ed25519.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lock_Ed25519.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Lock.Ed25519', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'vk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lock_Ed25519 clone() => Lock_Ed25519()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lock_Ed25519 copyWith(void Function(Lock_Ed25519) updates) => super.copyWith((message) => updates(message as Lock_Ed25519)) as Lock_Ed25519;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lock_Ed25519 create() => Lock_Ed25519._();
  Lock_Ed25519 createEmptyInstance() => create();
  static $pb.PbList<Lock_Ed25519> createRepeated() => $pb.PbList<Lock_Ed25519>();
  @$core.pragma('dart2js:noInline')
  static Lock_Ed25519 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lock_Ed25519>(create);
  static Lock_Ed25519? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get vk => $_getN(0);
  @$pb.TagNumber(1)
  set vk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVk() => $_has(0);
  @$pb.TagNumber(1)
  void clearVk() => clearField(1);
}

enum Lock_Value {
  ed25519, 
  notSet
}

class Lock extends $pb.GeneratedMessage {
  factory Lock() => create();
  Lock._() : super();
  factory Lock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Lock_Value> _Lock_ValueByTag = {
    1 : Lock_Value.ed25519,
    0 : Lock_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Lock', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Lock_Ed25519>(1, _omitFieldNames ? '' : 'ed25519', subBuilder: Lock_Ed25519.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lock clone() => Lock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lock copyWith(void Function(Lock) updates) => super.copyWith((message) => updates(message as Lock)) as Lock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lock create() => Lock._();
  Lock createEmptyInstance() => create();
  static $pb.PbList<Lock> createRepeated() => $pb.PbList<Lock>();
  @$core.pragma('dart2js:noInline')
  static Lock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lock>(create);
  static Lock? _defaultInstance;

  Lock_Value whichValue() => _Lock_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Lock_Ed25519 get ed25519 => $_getN(0);
  @$pb.TagNumber(1)
  set ed25519(Lock_Ed25519 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEd25519() => $_has(0);
  @$pb.TagNumber(1)
  void clearEd25519() => clearField(1);
  @$pb.TagNumber(1)
  Lock_Ed25519 ensureEd25519() => $_ensure(0);
}

class Key_Ed25519 extends $pb.GeneratedMessage {
  factory Key_Ed25519() => create();
  Key_Ed25519._() : super();
  factory Key_Ed25519.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Key_Ed25519.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Key.Ed25519', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Key_Ed25519 clone() => Key_Ed25519()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Key_Ed25519 copyWith(void Function(Key_Ed25519) updates) => super.copyWith((message) => updates(message as Key_Ed25519)) as Key_Ed25519;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Key_Ed25519 create() => Key_Ed25519._();
  Key_Ed25519 createEmptyInstance() => create();
  static $pb.PbList<Key_Ed25519> createRepeated() => $pb.PbList<Key_Ed25519>();
  @$core.pragma('dart2js:noInline')
  static Key_Ed25519 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Key_Ed25519>(create);
  static Key_Ed25519? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
}

enum Key_Value {
  ed25519, 
  notSet
}

class Key extends $pb.GeneratedMessage {
  factory Key() => create();
  Key._() : super();
  factory Key.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Key.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Key_Value> _Key_ValueByTag = {
    1 : Key_Value.ed25519,
    0 : Key_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Key', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.blockchain.models'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<Key_Ed25519>(1, _omitFieldNames ? '' : 'ed25519', subBuilder: Key_Ed25519.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Key clone() => Key()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Key copyWith(void Function(Key) updates) => super.copyWith((message) => updates(message as Key)) as Key;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Key create() => Key._();
  Key createEmptyInstance() => create();
  static $pb.PbList<Key> createRepeated() => $pb.PbList<Key>();
  @$core.pragma('dart2js:noInline')
  static Key getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Key>(create);
  static Key? _defaultInstance;

  Key_Value whichValue() => _Key_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Key_Ed25519 get ed25519 => $_getN(0);
  @$pb.TagNumber(1)
  set ed25519(Key_Ed25519 v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEd25519() => $_has(0);
  @$pb.TagNumber(1)
  void clearEd25519() => clearField(1);
  @$pb.TagNumber(1)
  Key_Ed25519 ensureEd25519() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

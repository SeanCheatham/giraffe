import 'dart:convert';
import 'dart:typed_data';

import 'package:blockchain_protobuf/models/core.pb.dart';
import 'package:crypto/crypto.dart';

import 'package:bs58/bs58.dart';

extension BlockCodecOps on Block {
  BlockId get id => BlockId(bytes: sha256.convert(encodeV1).bytes);

  List<int> get encodeV1 {
    List<int> bytes = [];
    bytes.addAll(parentHeaderId.bytes);
    bytes.addAll(timestamp.toBytes());
    bytes.addAll(height.toBytes());
    bytes.addAll(proof);
    transactionIds.forEach((id) => bytes.addAll(id.bytes));
    return bytes;
  }
}

extension FullBlockCodecOps on FullBlock {
  Block get block => Block(
      parentHeaderId: parentHeaderId,
      timestamp: timestamp,
      height: height,
      proof: proof,
      transactionIds: transactions.map((t) => t.id));

  BlockId get id => block.id;
}

extension TransactionCodecOps on Transaction {
  TransactionId get id => TransactionId(bytes: sha256.convert(encodeV1).bytes);

  List<int> get encodeV1 {
    final bytes = <int>[];
    inputs.map((i) => i.encodeV1).forEach(bytes.addAll);
    outputs.map((i) => i.encodeV1).forEach(bytes.addAll);
    return bytes;
  }
}

extension TransactionInputCodecOps on TransactionInput {
  List<int> get encodeV1 {
    final bytes = <int>[];
    bytes.addAll(reference.encodeV1);
    bytes.addAll(challenge.encodeV1);
    challengeArguments.forEach(bytes.addAll);
    return bytes;
  }
}

extension TransactionOutputCodecOps on TransactionOutput {
  List<int> get encodeV1 {
    final bytes = <int>[];
    bytes.addAll(value.encodeV1);
    bytes.addAll(account.encodeV1);

    return bytes;
  }
}

extension TransactionOutputReferenceCodecOps on TransactionOutputReference {
  List<int> get encodeV1 {
    final bytes = <int>[];
    bytes.addAll(transactionId.bytes);
    bytes.addAll((ByteData(4)..setInt32(0, index)).buffer.asUint8List());
    return bytes;
  }
}

extension ValueCodecOps on Value {
  List<int> get encodeV1 {
    final bytes = <int>[];
    if (hasCoin()) {
      bytes.add(0);
      bytes.addAll(utf8.encode(coin.quantity));
    }
    return bytes;
  }
}

extension AccountCodecOps on Account {
  List<int> get encodeV1 {
    final bytes = <int>[];
    bytes.addAll(id);
    return bytes;
  }
}

extension ChallengeCodecOps on Challenge {
  List<int> get encodeV1 {
    final bytes = <int>[];
    bytes.addAll(utf8.encode(script));
    return bytes;
  }
}

extension BlockIdShowOps on BlockId {
  String get show => base58.encode(Uint8List.fromList(bytes));
}

extension TransactionIdShowOps on TransactionId {
  String get show => base58.encode(Uint8List.fromList(bytes));
}

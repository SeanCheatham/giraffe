import 'dart:typed_data';

import 'package:giraffe_sdk/sdk.dart';
import 'package:test/test.dart';
import 'package:convert/convert.dart';

void main() {
  group("Transaction Codecs", () {
    for (int i = 0; i < _TestVector.allVectors.length; i++) {
      final vector = _TestVector.allVectors[i];
      test("Test $i", () async {
        final txBytes = _decodeUnsigned(vector.txHex);
        final tx = Transaction.fromBuffer(txBytes);
        final signableBytes = tx.signableBytes;
        expect(hex.encode(signableBytes), vector.signableBytesHex);
      });
    }
  });
}

Uint8List _decodeUnsigned(String h) {
  final d = hex.decode(h);
  return (d as Uint8List);
}

class _TestVector {
  final String txHex;
  final String signableBytesHex;

  const _TestVector(this.txHex, this.signableBytesHex);

  static const test1 = _TestVector(
    "12380a360a2e0a2c4171696a6e457978755374727a41325468794b4337424b4d6673327a445743754670397a536e78786255434610c9abea910c12380a360a2e0a2c3941384e6b666431516f53466b45417038515a694654706d7144694b6f64455533475277594a75353147324e109c9087ce0412380a360a2e0a2c4247507a747546514a4864744a526361533855486e736f674a63524c76675267485a366e443457745a453575109b86d0a60c12380a360a2e0a2c3263375a686674466a4a5652424d566756316367327a564178576a4742415259343456657036734162797a7210bbdac0b3071a6d0a2d0a2b5a764169546f6a5079446b5a544d393156434d69654a6d646e356b587a765073374a575051673564316444109e9bb1f5041a360a2e0a2c4364367844466465656b4c666e376f736d366a454671344e556261595154396f4254624574757a377837714510fee6fae70e",
    "000000040192344106f367b21481df1cbba70bce3f73350a81ce8f839992a8abec1cb60738c23a95c90179340fcabdb793230d6f47f8750fec9136210b4546a996470c9be1e907e9afeb49c1c81c01988695e575755f0b3fac96924e90056769ca5b75c02bd816d0401e7d6f534e00c4d4031b0117da6fdd686fa01155be2c9265b7f903283df1afec10f88cfc88c6593271f2db76702d3b00000001086eb3dbbcb9c996c912f21d86363001e6928e7ebe6774eb2dda2c7ac0e2eb34000000004eac4d9e0101acb031f6c6b65b86f3874ee18c3a134ca7d523ab40d57d3c96b03b4ba7044cddecfeb37e00000000",
  );

  static const allVectors = [test1];
}

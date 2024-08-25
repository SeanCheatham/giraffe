import 'package:blockchain_protobuf/models/core.pb.dart';
import 'package:blockchain_sdk/sdk.dart';

import 'common/models/unsigned.dart';

extension BlockHeaderCodecs on BlockHeader {
  List<int> get immutableBytes => <int>[
        ...parentHeaderId.immutableBytes,
        ...parentSlot.immutableBytes,
        ...txRoot.decodeBase58,
        ...timestamp.immutableBytes,
        ...height.immutableBytes,
        ...slot.immutableBytes,
        ...stakerCertificate.immutableBytes,
        ...account.immutableBytes
      ];

  BlockId get id => hasHeaderId() ? headerId : computeId;

  BlockId get computeId => BlockId()..value = immutableBytes.hash256.base58;

  void embedId() => headerId = computeId;

  bool get containsValidId => headerId == computeId;
}

extension UnsignedBlockHeaderCodecs on UnsignedBlockHeader {
  List<int> get signableBytes => <int>[
        ...parentHeaderId.immutableBytes,
        ...parentSlot.immutableBytes,
        ...txRoot.decodeBase58,
        ...timestamp.immutableBytes,
        ...height.immutableBytes,
        ...slot.immutableBytes,
        ...partialStakerCertificate.immutableBytes,
        ...account.immutableBytes
      ];
}

extension StakerCertificateCodecs on StakerCertificate {
  List<int> get immutableBytes => <int>[
        ...blockSignature.decodeBase58,
        ...vrfSignature.decodeBase58,
        ...vrfVK.decodeBase58,
        ...thresholdEvidence.decodeBase58,
        ...eta.decodeBase58
      ];
}

extension PartialStakerCertificateCodecs on PartialStakerCertificate {
  List<int> get immutableBytes => <int>[
        ...vrfSignature.decodeBase58,
        ...vrfVK.decodeBase58,
        ...thresholdEvidence.decodeBase58,
        ...eta.decodeBase58
      ];
}

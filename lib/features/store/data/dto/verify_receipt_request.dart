import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_receipt_request.freezed.dart';
part 'verify_receipt_request.g.dart';

@freezed
abstract class VerifyReceiptRequest with _$VerifyReceiptRequest {
  const factory VerifyReceiptRequest({
    required String appReceipt,
  }) = _VerifyReceiptRequest;

  factory VerifyReceiptRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyReceiptRequestFromJson(json);
}

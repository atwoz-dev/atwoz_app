import 'package:freezed_annotation/freezed_annotation.dart';

part 'introduce_update_request.freezed.dart';
part 'introduce_update_request.g.dart';

@freezed
abstract class IntroduceUpdateRequest with _$IntroduceUpdateRequest {
  const factory IntroduceUpdateRequest({
    required String title,
    required String content,
  }) = _IntroduceUpdateRequest;

  factory IntroduceUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$IntroduceUpdateRequestFromJson(json);
}

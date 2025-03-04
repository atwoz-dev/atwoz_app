import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_action.freezed.dart';

@freezed
sealed class HomeAction with _$HomeAction {
  const factory HomeAction.onTapNotification() = OnTapNotification; // 알림 버튼 터치 이벤트
  const factory HomeAction.onTapFilter() = OnTapFilter; // 이상형 설정 버튼 터치 이벤트
  const factory HomeAction.onTapProfileCard(int userId) = OnTapProfileCard; // 소개받은 프로필 카드 터치 이벤트
  const factory HomeAction.onTapHeartBtn() = OnTapHeartBtn; // 좋아요 버튼 터치 이벤트
  const factory HomeAction.onTapLoveTest() = onTapLoveTest; // 연애고사 영역 터치 이벤트
  const factory HomeAction.onTapCategory(String category) = OnTapCategory; // 카테고리 버튼 터치 이벤트
}

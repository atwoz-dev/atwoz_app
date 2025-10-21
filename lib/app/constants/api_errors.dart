// 응답 오류 시 받는 code
class ApiErrors {
  const ApiErrors._();

  static const String forbidden = '403'; // 영구 정지
  static const String deletedUser = '403003'; // 삭제된 계정
  static const String waitingStatus = '403004'; // 심사대기 상태
  static const String temporarilyForbidden = '403005'; // 일시 정지
  static const String dormant = '400800'; // 휴면 상태
}

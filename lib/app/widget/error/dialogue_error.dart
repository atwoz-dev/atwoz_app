enum DialogueErrorType {
  network('네트워크 연결에 실패했습니다.'),
  unknown('알 수 없는 오류가 발생했습니다.'),
  failSignOut('로그아웃을 실패했습니다.'),
  failDormantChange('휴면회원 전환에 실패했습니다.'),
  failDormantRelease('휴면회원 해제에 실패했습니다.'),
  failUpdateProfileImages('프로필 이미지 업데이트에 실패했습니다.');

  const DialogueErrorType(this.label);
  final String label;
}

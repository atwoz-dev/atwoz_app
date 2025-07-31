enum DialogueErrorType {
  network('네트워크 연결에 실패했습니다.'),
  unknown('알 수 없는 오류가 발생했습니다.');

  const DialogueErrorType(this.label);
  final String label;
}

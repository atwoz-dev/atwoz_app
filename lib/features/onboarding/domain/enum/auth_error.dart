enum AuthError {
  forbidden,
  deletedUser,
  waitingStatus,
  temporarilyForbidden,
  dormant;

  static const String codeForbidden = '403';
  static const String codeDeletedUser = '403003';
  static const String codeWaitingStatus = '403004';
  static const String codeTemporarilyForbidden = '403005';
  static const String codeDormant = '400800';
}

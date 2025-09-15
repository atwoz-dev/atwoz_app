enum NotificationType {
  matchRequested('MATCH_REQUEST'),
  matchAccepted('MATCH_ACCEPT'),
  matchRejected('MATCH_REJECT'),
  profileExchangeRequested('PROFILE_EXCHANGE_REQUEST'),
  profileExchangeAccepted('PROFILE_EXCHANGE_ACCEPT'),
  profileExchangeRejected('PROFILE_EXCHANGE_REJECT'),
  likeReceived('LIKE'),
  profileImageChangeRequested('PROFILE_IMAGE_CHANGE_REQUEST'),
  interviewWriteRequested('INTERVIEW_WRITE_REQUEST'),
  inappropriatePostWarning('INAPPROPRIATE_POST_WARNING'),
  inappropriateProfileWarning('INAPPROPRIATE_PROFILE_WARNING'),
  inactivityReminder('INACTIVITY_REMINDER'),
  unknown('');

  const NotificationType(this.value);

  static final _byValue = {
    for (final type in NotificationType.values) type.value: type,
  };

  static NotificationType parse(String? value) =>
      _byValue[value?.toUpperCase() ?? ''] ?? NotificationType.unknown;

  final String value;
}

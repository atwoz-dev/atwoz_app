/// 서버에서 사용하는 알림 타입 enum
enum ServerNotificationType {
  matchRequest('MATCH_REQUEST'),
  matchAccept('MATCH_ACCEPT'),
  matchReject('MATCH_REJECT'),
  profileExchangeRequest('PROFILE_EXCHANGE_REQUEST'),
  profileExchangeAccept('PROFILE_EXCHANGE_ACCEPT'),
  profileExchangeReject('PROFILE_EXCHANGE_REJECT'),
  like('LIKE'),
  profileImageChangeRequest('PROFILE_IMAGE_CHANGE_REQUEST'),
  interviewWriteRequest('INTERVIEW_WRITE_REQUEST'),
  inappropriateInterview('INAPPROPRIATE_INTERVIEW'),
  inappropriateProfile('INAPPROPRIATE_PROFILE'),
  inappropriateProfileImage('INAPPROPRIATE_PROFILE_IMAGE'),
  inactivityReminder('INACTIVITY_REMINDER');

  const ServerNotificationType(this.key);
  final String key;

  static final Map<String, ServerNotificationType> _byValue = {
    for (final level in ServerNotificationType.values) level.key: level,
  };

  static ServerNotificationType? tryParse(String? value) =>
      _byValue[value?.toUpperCase()];
}

class NotificationPreferencesDto {
  final int memberId;
  final bool isEnabledGlobally;
  final Map<String, bool> preferences;

  NotificationPreferencesDto({
    required this.memberId,
    required this.isEnabledGlobally,
    required this.preferences,
  });

  factory NotificationPreferencesDto.fromJson(Map<String, dynamic> json) {
    return NotificationPreferencesDto(
      memberId: json['memberId'] as int,
      isEnabledGlobally: json['isEnabledGlobally'] as bool,
      preferences: Map<String, bool>.from(json['preferences'] as Map),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'memberId': memberId,
      'isEnabledGlobally': isEnabledGlobally,
      'preferences': preferences,
    };
  }
}

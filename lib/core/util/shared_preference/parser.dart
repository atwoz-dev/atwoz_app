part of 'shared_preference_key.dart';

List<UserNotificationType> _enabledNotificationsFromJson(String value) {
  return (json.decode(value) as List<dynamic>)
      .map((e) => UserNotificationType.tryParse(e as String))
      .whereType<UserNotificationType>()
      .toList();
}

String _enabledNotificationsToJson(List<UserNotificationType> value) {
  return json.encode(value.map((e) => e.name).toList());
}

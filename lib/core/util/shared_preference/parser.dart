part of 'shared_preference_key.dart';

List<ServerNotificationType> _enabledNotificationsFromJson(String value) {
  return (json.decode(value) as List<dynamic>)
      .map((e) => ServerNotificationType.tryParse(e as String))
      .whereType<ServerNotificationType>()
      .toList();
}

String _enabledNotificationsToJson(List<ServerNotificationType> value) {
  return json.encode(value.map((e) => e.key).toList());
}

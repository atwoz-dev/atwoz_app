part of 'shared_preference_key.dart';

List<ServerNotificationType> _enabledNotificationsFromJson(String value) {
  if (value.isEmpty) return const [];
  try {
    final decoded = json.decode(value);
    if (decoded is! List) return const [];
    final set = <ServerNotificationType>{};
    for (final e in decoded) {
      final parsed = e is String ? ServerNotificationType.tryParse(e) : null;
      if (parsed != null) set.add(parsed);
    }
    return set.toList(); // 중복 제거
  } catch (_) {
    return const [];
  }
}

String _enabledNotificationsToJson(List<ServerNotificationType> value) {
  return json.encode(value.map((e) => e.key).toList());
}

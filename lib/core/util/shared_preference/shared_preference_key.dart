import 'dart:convert';

import 'package:atwoz_app/core/util/shared_preference/shared_preference_manager.dart';
import 'package:atwoz_app/features/notification/domain/model/server_notification_type.dart';

part 'parser.dart';

class SharedPreferenceKeys {
  static const enabledNotifications =
      SharedPreferenceKey<List<ServerNotificationType>>(
    'enabledNotifications',
    defaultValue: [],
    fromJson: _enabledNotificationsFromJson,
    toJson: _enabledNotificationsToJson,
  );

  static const notificationAllowed = SharedPreferencePrimitiveKey<bool>(
    'notificationAllowed',
    defaultValue: false,
  );
}

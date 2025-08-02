import 'dart:convert';

import 'package:atwoz_app/core/util/shared_preference/shared_preference_manager.dart';
import 'package:atwoz_app/features/my/presentation/provider/my_settings.dart';

part 'parser.dart';

class SharedPreferenceKeys {
  static const enabledNotifications =
      SharedPreferenceKey<List<UserNotificationType>>(
    'enabledNotifications',
    defaultValue: [],
    fromJson: _enabledNotificationsFromJson,
    toJson: _enabledNotificationsToJson,
  );

  static const notificationAllowed = SharedPreferencePrimitiveKey<bool>(
    'notificationAllowed',
    defaultValue: false,
  );

  static const fcmToken = SharedPreferencePrimitiveKey<String>(
    'fcmToken',
    defaultValue: '',
  );
}

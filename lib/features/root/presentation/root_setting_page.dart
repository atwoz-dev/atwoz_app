import 'package:atwoz_app/core/widgets/view/default_scaffold.dart';
import 'package:atwoz_app/features/root/presentation/widgets/default_common_appbar.dart';
import 'package:atwoz_app/features/root/presentation/widgets/root_setting_list_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/theme.dart';

class RootSettingPage extends ConsumerWidget {
  const RootSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = context.l10n;
    List data = [
      {
        "title": l10n.action_view_more_notifications,
        "event": 1,
      },
      {
        "title": l10n.settings_user_guide,
        "event": 2,
      },
      {
        "title": l10n.settings_contact_us,
        "event": 3,
      },
      {
        "title": l10n.settings_app_info,
        "event": 4,
      },
      {
        "title": l10n.settings_app_update,
        "event": 5,
      }
    ];

    return DefaultScaffold(
      appBar: DefaultCommonAppbar(
        title: l10n.settings_environment,
      ),
      body: SettingListView(data: data),
    );
  }
}

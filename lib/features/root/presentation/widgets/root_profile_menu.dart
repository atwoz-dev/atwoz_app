import 'package:atwoz_app/core/widgets/image/app_icon.dart';
import 'package:atwoz_app/core/widgets/view/default_divider.dart';
import 'package:atwoz_app/data/sources/remote/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/theme/theme.dart';
import '../../../../core/widgets/widget.dart';
import '../../../../core/base/notifier/app_notifier.dart';

class RootProfileMenu extends ConsumerWidget {
  const RootProfileMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations l10n = context.l10n;

    final appStateAsync = ref.watch(appNotifierProvider);

    return appStateAsync.when(
      data: (appState) {
        final menuItems = [
          GestureDetector(
            onTap: () =>
                _changeThemeMode(context, ref, appState.themeModeIndex),
            child: _buildItem(
                AppIcons.imgFill, l10n.settings_change_theme, context),
          ),
          GestureDetector(
            onTap: () => _changeLanguage(context, ref, appState.languageCode),
            child: _buildItem(
                AppIcons.language, l10n.settings_change_language, context),
          ),
          GestureDetector(
            onTap: ref.read(authServiceProvider).signOut,
            child: _buildItem(AppIcons.onOff, l10n.user_logout, context),
          ),
        ];

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: _addSeparators(menuItems, const DefaultDivider()),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }

  /// 구분자를 추가하는 헬퍼 메서드
  List<Widget> _addSeparators(List<Widget> items, Widget separator) {
    final List<Widget> result = [];
    for (int i = 0; i < items.length; i++) {
      result.add(items[i]);
      if (i < items.length - 1) {
        result.add(separator);
      }
    }
    return result;
  }

  Future<void> _changeThemeMode(
      BuildContext context, WidgetRef ref, int currentThemeModeIndex) async {
    final appNotifier = ref.read(appNotifierProvider.notifier);

    await showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: ThemeMode.values.map((mode) {
            final isSelected = mode.index == currentThemeModeIndex;

            return ListTile(
              leading: Icon(
                isSelected ? Icons.check : Icons.circle_outlined,
                color: context.theme.colorScheme.primary,
              ),
              title: Text(_capitalize(mode.name)),
              onTap: () {
                Navigator.pop(context, mode.index);
              },
            );
          }).toList(),
        );
      },
    ).then((selectedModeIndex) {
      if (selectedModeIndex != null) {
        appNotifier.changeThemeMode(ThemeMode.values[selectedModeIndex]);
      }
    });
  }

  Future<void> _changeLanguage(
      BuildContext context, WidgetRef ref, String currentLanguage) async {
    final appNotifier = ref.read(appNotifierProvider.notifier);
    final supportedLocales = AppLocalizations.supportedLocales;

    await showModalBottomSheet<Locale>(
      context: context,
      builder: (BuildContext context) {
        return Column(
          children: supportedLocales.map((locale) {
            final isSelected = locale.languageCode == currentLanguage;

            return ListTile(
              leading: Icon(
                isSelected ? Icons.check : Icons.circle_outlined,
                color: context.theme.colorScheme.primary,
              ),
              title: Text(_capitalize(locale.languageCode)),
              onTap: () {
                Navigator.pop(context, locale);
              },
            );
          }).toList(),
        );
      },
    ).then((selectedLocale) {
      if (selectedLocale != null) {
        appNotifier.changeLocale(selectedLocale);
      }
    });
  }

  Widget _buildItem(String icon, String label, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.theme.colorScheme.surface,
            ),
            child: AppIcon(
              icon,
              colorFilter: AppIcon.fillColor(context.theme.colorScheme.primary),
            ),
          ),
          const Gap(14),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                color: context.theme.colorScheme.onSurface,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: context.theme.colorScheme.shadow,
          ),
        ],
      ),
    );
  }

  String _capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}

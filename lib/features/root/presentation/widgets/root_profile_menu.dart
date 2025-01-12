import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/view/default_divider.dart';
import 'package:atwoz_app/data/sources/remote/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../../../../app/constants/constants.dart';
import '../../../../app/provider/global_provider.dart';

class RootProfileMenu extends ConsumerWidget {
  const RootProfileMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStateAsync = ref.watch(appNotifierProvider);

    return appStateAsync.when(
      data: (appState) {
        final menuItems = [
          GestureDetector(
            onTap: () =>
                _changeThemeMode(context, ref, appState.themeModeIndex),
            child: _buildItem(AppIcons.circle, "테마 변경", context),
          ),
          GestureDetector(
            onTap: ref.read(authServiceProvider).signOut,
            child: _buildItem(AppIcons.circle, "로그아웃", context),
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

import 'package:atwoz_app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SettingListView extends ConsumerWidget {
  const SettingListView({
    super.key,
    required this.data,
  });

  final List data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: data.length,
      itemBuilder: (BuildContext context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(15),
            GestureDetector(
              onTap: () => fetchNotifierEvent(data[index]["event"], context),
              child: Container(
                height: 41,
                decoration: BoxDecoration(
                  color: context.appTheme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: context.appColors.shadow,
                      spreadRadius: 1,
                      blurRadius: 2,
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(left: 15, top: 10),
                child:
                    Text(data[index]["title"], style: AppStyles.body01Medium()),
              ),
            ),
          ],
        );
      },
    );
  }
}

//TODO: 이벤트를 처리하는 함수를 추가할 수 있다.
void fetchNotifierEvent(data, BuildContext context) {
  switch (data) {
    case 1:
      break;
    case 2:
      break;
    case 3:
      break;
    case 4:
      break;
    case 5:
      break;
  }
}

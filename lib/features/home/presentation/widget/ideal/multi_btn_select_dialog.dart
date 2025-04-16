import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/app/widget/widget.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/features/home/presentation/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MultiBtnSelectDialog extends ConsumerStatefulWidget {
  const MultiBtnSelectDialog({
    super.key,
    required this.btnNames,
    required this.maxSelectableCount,
    required this.title,
  });

  final String title; // 다이얼로그 제목
  final List<String> btnNames; // 선택된 버튼 이름 리스트
  final int maxSelectableCount; // 최대 선택 가능 개수

  @override
  ConsumerState<MultiBtnSelectDialog> createState() =>
      _MultiBtnSelectDialogState();
}

class _MultiBtnSelectDialogState extends ConsumerState<MultiBtnSelectDialog> {
  late List<String> _selectedItems;

  @override
  void initState() {
    super.initState();
    final idealType = ref.read(idealTypeNotifierProvider).value;
    _selectedItems = widget.title == '지역'
        ? List<String>.from(idealType?.regions ?? [])
        : List<String>.from(idealType?.hobbies ?? []);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.only(top: 16, bottom: 24),
          width: context.screenWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: context.pop, child: DefaultIcon(IconPath.close)),
                  ],
                ),
                Text(
                  widget.title,
                  style: Fonts.header03().copyWith(
                    fontWeight: FontWeight.w600,
                    color: Palette.colorBlack,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '${widget.maxSelectableCount}개까지 중복 선택이 가능해요',
                  style: Fonts.body02Medium().copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8D92A0),
                  ),
                ),
                Container(
                  height: context.screenHeight * 0.26,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SingleChildScrollView(
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8.0, // 가로 간격
                      runSpacing: 8.0, // 세로 간격
                      children: widget.btnNames.map((tag) {
                        bool isSelected = _selectedItems.contains(tag);
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _toggleItem(tag),
                          child: Container(
                            margin: EdgeInsets.all(4),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 9),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Palette.colorPrimary100
                                  : Colors.white,
                              border: Border.all(color: Color(0xffEDEEF0)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(tag,
                                style: TextStyle(
                                    color: isSelected
                                        ? Palette.colorPrimary600
                                        : Palette.colorGrey800)),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                DefaultElevatedButton(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  onPressed: _selectedItems.isNotEmpty ? _submit : null,
                  onPrimary: context.palette.onPrimary,
                  primary: context.palette.primary,
                  child: Text("확인"),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void _toggleItem(String item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        // 이미 선택된 아이템이면 제거
        _selectedItems.remove(item);
      } else {
        // 선택되지 않은 아이템이고 최대 선택 개수를 초과하지 않으면 추가
        if (_selectedItems.length < widget.maxSelectableCount) {
          _selectedItems.add(item);
        }
      }
    });
  }

  void _submit() {
    final notifier = ref.read(idealTypeNotifierProvider.notifier);
    if (widget.title == '지역') {
      notifier.updateRegions(_selectedItems);
    } else {
      notifier.updateHobbies(_selectedItems);
    }
    pop(context);
  }
}

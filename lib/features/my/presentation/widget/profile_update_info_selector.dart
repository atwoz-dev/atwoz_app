// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:atwoz_app/features/my/domain/model/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/temp.dart';
import 'package:atwoz_app/app/widget/list/single_select_list_chip.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_choices.dart';
import 'package:atwoz_app/features/my/my.dart';

class ProfileUpdateInfoSelector extends ConsumerStatefulWidget {
  final MyProfileInfoType profileType;
  final MyProfile profile;
  final void Function(MyProfile) onProfileUpdated;
  const ProfileUpdateInfoSelector({
    super.key,
    required this.profileType,
    required this.profile,
    required this.onProfileUpdated,
  });

  @override
  ConsumerState<ProfileUpdateInfoSelector> createState() =>
      _ProfileUpdateInfoSelectorState();
}

class _ProfileUpdateInfoSelectorState
    extends ConsumerState<ProfileUpdateInfoSelector> {
  late ValueNotifier<MyProfile> _tempProfile;

  @override
  void initState() {
    super.initState();
    _tempProfile = ValueNotifier<MyProfile>(widget.profile);
  }

  @override
  void dispose() {
    _tempProfile.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    Map<String, Widget> infoValues = {
      '직업': _SingleButtonTypeSelector(
        options: jobOptions,
        initialValue: widget.profile.job,
        onSelected: (value) {
          _tempProfile.value = _tempProfile.value.copyWith(job: value);
          widget.onProfileUpdated(_tempProfile.value);
        },
      ),
      '지역': LocationInputWidget(
        selectedLocation: null,
        onLocationUpdated: (p0) {},
      ),
      '학력': _SingleButtonTypeSelector(
        options: educationMap.values.toList(),
        initialValue: widget.profile.education,
        onSelected: (value) {
          _tempProfile.value = _tempProfile.value.copyWith(education: value);
          widget.onProfileUpdated(_tempProfile.value);
        },
      ),
      '흡연여부': _SingleButtonTypeSelector(
        options: smokingMap.values.toList(),
        initialValue: smokingMap[widget.profile.smokingStatus] ?? '',
        onSelected: (value) {
          _tempProfile.value = _tempProfile.value.copyWith(
              smokingStatus:
                  smokingMap.entries.firstWhere((e) => e.value == value).key);
          widget.onProfileUpdated(_tempProfile.value);
        },
      ),
      '음주빈도': _SingleButtonTypeSelector(
        options: drinkingMap.values.toList(),
        initialValue: drinkingMap[widget.profile.drinkingStatus] ?? '',
        onSelected: (value) {
          _tempProfile.value = _tempProfile.value.copyWith(
              drinkingStatus:
                  drinkingMap.entries.firstWhere((e) => e.value == value).key);
          widget.onProfileUpdated(_tempProfile.value);
        },
      ),
      '종교': _SingleButtonTypeSelector(
        options: religionMap.values.toList(),
        initialValue: religionMap[widget.profile.religion] ?? '',
        onSelected: (value) {
          _tempProfile.value = _tempProfile.value.copyWith(
              religion:
                  religionMap.entries.firstWhere((e) => e.value == value).key);
          widget.onProfileUpdated(_tempProfile.value);
        },
      ),
      'MBTI': _GroupTypeSelector(
        initialValues: widget.profile.mbti.split(''),
        onSelected: (value) {
          _tempProfile.value = _tempProfile.value.copyWith(mbti: value.join());
          widget.onProfileUpdated(_tempProfile.value);
        },
      ),
      '취미': _MultiBtnTypeSelector(
        options: hobbies,
        initialValues: widget.profile.hobbies,
        onSelected: (value) {
          _tempProfile.value = _tempProfile.value.copyWith(hobbies: value);
          widget.onProfileUpdated(_tempProfile.value);
        },
      ),
    };
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              _getTitleByType(widget.profileType), // TODO: UI 확인용 하드코딩. 추후 변경
              style: Fonts.header03().copyWith(fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const Gap(24),
        infoValues[widget.profileType.label]!, // TODO: UI 확인용 하드코딩. 추후 변경
      ],
    );
  }
}

String _getTitleByType(MyProfileInfoType type) {
  switch (type) {
    case MyProfileInfoType.job:
      return "직업이 어떻게 되세요?";
    case MyProfileInfoType.region:
      return "지역이 어떻게 되세요?";
    case MyProfileInfoType.education:
      return "학력이 어떻게 되세요?";
    case MyProfileInfoType.smokingStatus:
      return "흡연 여부가 어떻게 되세요?";
    case MyProfileInfoType.drinkingStatus:
      return "음주 빈도가 어떻게 되세요?";
    case MyProfileInfoType.religion:
      return "종교가 어떻게 되세요?";
    case MyProfileInfoType.mbti:
      return "MBTI가 어떻게 되세요?";
    case MyProfileInfoType.hobbies:
      return "취미가 어떻게 되세요?";
  }
}

class _SingleButtonTypeSelector extends StatefulWidget {
  const _SingleButtonTypeSelector({
    required this.options,
    required this.initialValue,
    required this.onSelected,
  });

  final List<String> options;
  final String initialValue;
  final void Function(String) onSelected;

  @override
  State<_SingleButtonTypeSelector> createState() =>
      _SingleButtonTypeSelectorState();
}

class _SingleButtonTypeSelectorState extends State<_SingleButtonTypeSelector> {
  int initialIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleSelectListChip(
      options: widget.options,
      selectedOption: widget.options[initialIndex],
      onSelectionChanged: (value) {
        setState(() {
          initialIndex = widget.options.indexOf(value!);
          widget.onSelected(value);
        });
      },
    );
  }
}

class _MultiBtnTypeSelector extends StatefulWidget {
  const _MultiBtnTypeSelector({
    required this.options,
    required this.initialValues,
    required this.onSelected,
  });

  final List<String> options;
  final List<String> initialValues;
  final void Function(List<String>) onSelected;

  @override
  State<_MultiBtnTypeSelector> createState() => _MultiBtnTypeSelectorState();
}

class _MultiBtnTypeSelectorState extends State<_MultiBtnTypeSelector> {
  late List<String> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.initialValues);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8.0, // 가로 간격
          runSpacing: 8.0, // 세로 간격
          children: widget.options.map((tag) {
            bool isSelected = _selectedItems.contains(tag);

            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                _toggleItem(tag);
                widget.onSelected(_selectedItems);
              },
              child: Container(
                //margin: const EdgeInsets.all(4),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 9,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Palette.colorPrimary100 : Colors.white,
                  border: Border.all(
                    color: const Color(0xffEDEEF0),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  tag,
                  style: TextStyle(
                    color: isSelected
                        ? Palette.colorPrimary600
                        : Palette.colorGrey800,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _toggleItem(String item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        // 이미 선택된 아이템이면 제거
        _selectedItems.remove(item);
      } else {
        // 선택되지 않은 아이템이고 최대 선택 개수를 초과하지 않으면 추가
        if (_selectedItems.length < 3) {
          _selectedItems.add(item);
        }
      }
    });
  }
}

class _InputTypeSelector extends StatelessWidget {
  const _InputTypeSelector();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText: "진저", //TODO: 추후 프로필 정보로 변경
        hintStyle: Fonts.body02Medium().copyWith(
          fontWeight: FontWeight.w400,
          color: const Color(0xff8D92A0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xffEDEEF0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Palette.colorBlack,
          ),
        ),
      ),
    );
  }
}

class _GroupTypeSelector extends StatefulWidget {
  const _GroupTypeSelector({
    required this.initialValues,
    required this.onSelected,
  });

  final List<String> initialValues;
  final void Function(List<String>) onSelected;

  @override
  State<_GroupTypeSelector> createState() => _GroupTypeSelectorState();
}

class _GroupTypeSelectorState extends State<_GroupTypeSelector> {
  final List<String> _mbtiLetters = ['E', 'N', 'F', 'P', 'I', 'S', 'T', 'J'];
  List<String> _selectedMbti = [];

  @override
  void initState() {
    // TODO: implement initState
    _selectedMbti = widget.initialValues; // TODO: 기존 MBTI로 값 설정
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 1,
      ),
      itemCount: _mbtiLetters.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => setState(() {
            int letterPlace = index < 4 ? index : index - 4;
            _selectedMbti[letterPlace] = _mbtiLetters[index];
            widget.onSelected(_selectedMbti);
          }),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: _selectedMbti.contains(_mbtiLetters[index])
                    ? Palette.colorPrimary100
                    : Palette.colorGrey200,
              ),
              color: _selectedMbti.contains(_mbtiLetters[index])
                  ? Palette.colorPrimary100
                  : context.palette.surface,
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: double.infinity, // 카드의 가로 길이를 GridView에 맞춤
            child: Text(
              _mbtiLetters[index],
              style: Fonts.title(
                _selectedMbti.contains(_mbtiLetters[index])
                    ? context.palette.primary
                    : Palette.colorGrey200,
              ).copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30.sp,
              ),
            ),
          ),
        );
      },
    );
  }
}

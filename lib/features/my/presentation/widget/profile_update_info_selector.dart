import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/constants/enum.dart';
import 'package:atwoz_app/app/constants/temp.dart';
import 'package:atwoz_app/app/widget/list/single_select_list_chip.dart';
import 'package:atwoz_app/core/extension/extension.dart';
import 'package:atwoz_app/features/auth/presentation/widget/sign_up_profile_choices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileUpdateInfoSelector extends StatelessWidget {
  const ProfileUpdateInfoSelector({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, Widget> infoValues = {
      // TODO: 화면 테스트용 하드코딩, view + viewModel 생성 후 삭제 예정
      '직업': _ButtonTypeSelector(
        options: jobOptions,
      ),
      '지역': LocationInputWidget(
          selectedLocation: '서울', onLocationUpdated: (value) {}),
      '학력': _ButtonTypeSelector(options: educationMap.values.toList()),
      '흡연여부': _ButtonTypeSelector(options: smokingMap.values.toList()),
      '음주빈도': _ButtonTypeSelector(options: drinkingMap.values.toList()),
      '종교': _ButtonTypeSelector(options: religionMap.values.toList()),
      'MBTI': _GroupTypeSelector(),
      '취미': _ButtonTypeSelector(options: hobbies),
      '닉네임': _InputTypeSelector()
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "직업이 어떻게 되세요?", // TODO: UI 확인용 하드코딩. 추후 변경
          style: Fonts.header03().copyWith(fontWeight: FontWeight.w700),
        ),
        Gap(24),
        infoValues['MBTI']!, // TODO: UI 확인용 하드코딩. 추후 변경
      ],
    );
  }
}

class _ButtonTypeSelector extends StatelessWidget {
  const _ButtonTypeSelector({
    required this.options,
  });

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return SingleSelectListChip(
        options: options,
        selectedOption: options[0], //TODO: 추후 수정
        onSelectionChanged: (value) {});
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
        hintStyle: Fonts.body02Medium()
            .copyWith(fontWeight: FontWeight.w400, color: Color(0xff8D92A0)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xffEDEEF0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Palette.colorBlack,
          ),
        ),
      ),
    );
  }
}

class _GroupTypeSelector extends StatefulWidget {
  const _GroupTypeSelector();

  @override
  State<_GroupTypeSelector> createState() => _GroupTypeSelectorState();
}

class _GroupTypeSelectorState extends State<_GroupTypeSelector> {
  final List<String> _mbtiLetters = ['E', 'N', 'F', 'P', 'I', 'S', 'T', 'J'];
  List<String> _selectedMbti = [];

  @override
  void initState() {
    // TODO: implement initState
    _selectedMbti = ['E', 'N', 'F', 'P']; // TODO: 기존 MBTI로 값 설정
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1),
      itemCount: _mbtiLetters.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => setState(() {
            int letterPlace = index < 4 ? index : index - 4;
            _selectedMbti[letterPlace] = _mbtiLetters[index];
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
              ).copyWith(fontWeight: FontWeight.bold, fontSize: 30.sp),
            ),
          ),
        );
      },
    );
  }
}

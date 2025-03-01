import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/input/outlined_dropdown.dart';
import 'package:atwoz_app/core/util/log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

// TODO: API 연결 후 하드코딩(닉네임) 빼기
// 신고하기 API 연결
class ReportPage extends ConsumerStatefulWidget {
  const ReportPage({super.key});

  @override
  ReportPageState createState() => ReportPageState();
}

class ReportPageState extends BaseConsumerStatefulPageState<ReportPage> {
  ReportPageState() : super(defaultAppBarTitle: '신고하기');
  String? selectedReportType;
  final List<String> reportTypes = [
    "허위프로필 (사진도용 등)",
    "과도한 성적 표현",
    "욕설 및 불쾌감을 주는 표현",
    "부적절한 사진",
    "프로필 내 연락처 기재",
    "기타",
  ];
  final TextEditingController reportContentController = TextEditingController();

  @override
  Widget buildPage(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              // 키보드가 올라왔을 때 스크롤 가능
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '닉네임',
                    style: Fonts.body02Regular(palette.onSurface)
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Gap(10),
                  Text(
                    '미노민호',
                    style: Fonts.header03(palette.onSurface)
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const Gap(30),
                  Text(
                    '신고유형',
                    style: Fonts.body02Regular(palette.onSurface)
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Gap(10),
                  OutlinedDropdown<String>(
                    placeholder: '신고 유형을 선택해주세요.',
                    items: reportTypes,
                    selectedItem: selectedReportType,
                    onItemSelected: (item) {
                      safeSetState(() {
                        selectedReportType = item;
                      });
                    },
                    valueBuilder: (item) => item,
                  ),
                  const Gap(30),
                  Text(
                    '신고내용',
                    style: Fonts.body02Regular(palette.onSurface)
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Gap(10),
                  DefaultTextFormField(
                    showCharacterCount: true, // 글자 수 카운터 표시
                    border: OutlineInputBorder(
                      borderRadius: Dimens.buttonRadius,
                      borderSide: BorderSide(
                        color: Palette.colorGrey100,
                        width: 2.0,
                      ),
                    ),
                    controller: reportContentController,
                    hintText: '텍스트 입력',
                    hintStyle: Fonts.body02Regular(Palette.colorGrey500),
                    maxLines: 8,
                    maxLength: 1000,
                  ),
                  const Gap(30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: DefaultIcon(
                          IconPath.exclamationCircle,
                          colorFilter:
                              DefaultIcon.fillColor(Palette.colorGrey500),
                        ),
                      ),
                      Gap(5),
                      Expanded(
                        child: Text(
                          '운영정책 위반 여부를 확인하기 위해 신고한 내용을 접수하고 상대방을 잠시 차단합니다. 허위로 신고할 경우 서비스 이용이 제한될 수 있으니 유의해 주세요.',
                          style: Fonts.body03Regular(Palette.colorGrey500),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: DefaultElevatedButton(
              onPressed: () {
                // TODO: 신고 로직
                Log.d('신고 유형: $selectedReportType');
                Log.d('신고 내용: ${reportContentController.text}');
              },
              child: Text(
                '신고하기',
                style: Fonts.body01Medium(palette.onPrimary)
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

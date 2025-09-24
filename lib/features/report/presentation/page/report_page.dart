import 'package:atwoz_app/app/router/router.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/app/constants/constants.dart';
import 'package:atwoz_app/app/widget/button/default_elevated_button.dart';
import 'package:atwoz_app/app/widget/icon/default_icon.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/app/widget/input/outlined_dropdown.dart';
import 'package:atwoz_app/core/util/toast.dart';
import 'package:atwoz_app/features/report/domain/enum/report_reason.dart';
import 'package:atwoz_app/features/report/presentation/provider/report_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

class ReportPage extends ConsumerStatefulWidget {
  final String name;
  final int userId;

  const ReportPage({
    super.key,
    required this.name,
    required this.userId,
  });

  @override
  ReportPageState createState() => ReportPageState();
}

class ReportPageState extends BaseConsumerStatefulPageState<ReportPage> {
  ReportPageState()
      : super(
          defaultAppBarTitle: '신고하기',
          isResizeToAvoidBottomInset: false,
          horizontalMargin: 20,
        );

  @override
  Widget buildPage(BuildContext context) {
    final reportState = ref.watch(reportNotifierProvider(widget.userId));
    final reportNotifier =
        ref.read(reportNotifierProvider(widget.userId).notifier);

    return Scaffold(
      resizeToAvoidBottomInset: false, // 키보드 올라와도 화면/버튼 안 밀림
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
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
                widget.name,
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
              OutlinedDropdown<ReportReason>(
                placeholder: '신고 유형을 선택해주세요.', items: ReportReason.values,
                selectedItem: reportState.reason, // 단일 소스
                onItemSelected: (reason) =>
                    reportNotifier.reason = reason.label,
                valueBuilder: (reason) => reason.label,
              ),
              const Gap(30),
              Text(
                '신고내용',
                style: Fonts.body02Regular(palette.onSurface)
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const Gap(10),
              DefaultTextFormField(
                showCharacterCount: true,
                border: const OutlineInputBorder(
                  borderRadius: Dimens.buttonRadius,
                  borderSide: BorderSide(
                    color: Palette.colorGrey100,
                    width: 2.0,
                  ),
                ),
                onChanged: (value) => reportNotifier.content = value,
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
                      colorFilter: DefaultIcon.fillColor(Palette.colorGrey500),
                    ),
                  ),
                  const Gap(5),
                  Expanded(
                    child: Text(
                      '운영정책 위반 여부를 확인하기 위해 신고한 내용을 접수하고 상대방을 잠시 차단합니다. 허위로 신고할 경우 서비스 이용이 제한될 수 있으니 유의해 주세요.',
                      style: Fonts.body03Regular(Palette.colorGrey500),
                    ),
                  ),
                ],
              ),
              const Gap(100), // 버튼 영역 확보용 여백
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultElevatedButton(
              border: const BorderSide(color: Color(0xffE1E1E1)),
              primary: Colors.white,
              onPressed: () {},
              child: Text(
                '차단하기',
                style: Fonts.body01Medium(const Color(0xff7E7E7E))
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            const Gap(8),
            DefaultElevatedButton(
              primary: reportState.reason != null
                  ? palette.primary
                  : Palette.colorGrey200,
              onPressed: () async {
                if (reportState.reason == null) return;
                if (await reportNotifier.report(widget.userId) &&
                    context.mounted) {
                  navigate(context, route: AppRoute.mainTab);
                  showToastMessage(
                    '신고가 정상적으로 접수되었습니다.\n상대방은 차단되어 이후에 노출되지 않습니다.',
                    gravity: ToastGravity.TOP,
                    toastLength: Toast.LENGTH_LONG,
                  );
                }
              },
              child: Text(
                '신고하기',
                style: Fonts.body01Medium(
                  reportState.reason != null
                      ? palette.onPrimary
                      : Palette.colorGrey300,
                ).copyWith(fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

import 'package:atwoz_app/core/extension/context_extension.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:atwoz_app/core/theme/app_icons.dart';
import 'package:atwoz_app/features/auth/widgets/auth_primary_button.dart';
import 'package:atwoz_app/features/auth/widgets/auth_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends ConsumerState<SignInPage> {
  final TextEditingController _identity = TextEditingController();
  final TextEditingController _password = TextEditingController();

  late final ValueNotifier<String?> errorId; // 선언 및 초기화
  late final ValueNotifier<String?> errorPassword;

  @override
  void initState() {
    super.initState();
    errorId = ValueNotifier(null); // 초기화
    errorPassword = ValueNotifier(null);
  }

  @override
  void dispose() {
    // 리소스 정리
    _identity.dispose();
    _password.dispose();
    errorId.dispose();
    errorPassword.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    setState(() {
      // Validation logic
      errorId.value = _identity.text.isEmpty ? 'ID is required' : null;
      errorPassword.value =
          _password.text.isEmpty ? 'Password is required' : null;
    });

    if (errorId.value == null && errorPassword.value == null) {
      // TODO: 로그인 로직
      debugPrint('Login 성공 with ID: ${_identity.text}');
    } else {
      debugPrint('Validation failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign In")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 아이디 입력 필드
            ValueListenableBuilder<String?>(
              valueListenable: errorId,
              builder: (context, error, child) {
                return AuthTextFormField(
                  textStyle: AppStyles.body01Medium(),
                  iconColor: Colors.black,
                  hintText: 'Enter your ID',
                  icon: AppIcons.person,
                  validator: (value) =>
                      value!.isEmpty ? 'ID is required' : null,
                  onChanged: (value) {
                    errorId.value = null;
                  },
                  textEditingController: _identity,
                  errorNotify: errorId,
                );
              },
            ),
            const Gap(25),
            // 비밀번호 입력 필드
            ValueListenableBuilder<String?>(
              valueListenable: errorPassword,
              builder: (context, error, child) {
                return AuthTextFormField(
                  textStyle: AppStyles.body01Medium(),
                  iconColor: Colors.black,
                  hintText: 'Enter your password',
                  icon: AppIcons.icLock,
                  obscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'Password is required' : null,
                  onChanged: (value) {
                    errorPassword.value = null;
                  },
                  textEditingController: _password,
                  errorNotify: errorPassword,
                );
              },
            ),
            const Gap(45),
            // 로그인 버튼
            AuthPrimaryButton(
              isLoading: false, // Placeholder for loading state
              text: "로그인",
              primary: context.appColors.primary,
              onClick: () {
                _validateAndSubmit();
              },
            ),
          ],
        ),
      ),
    );
  }
}

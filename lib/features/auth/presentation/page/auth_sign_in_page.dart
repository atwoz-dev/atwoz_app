import 'package:atwoz_app/core/mixin/log_mixin.dart';
import 'package:atwoz_app/core/state/base_page_state.dart';
import 'package:atwoz_app/core/extension/extended_context.dart';
import 'package:atwoz_app/app/constants/fonts.dart';
import 'package:atwoz_app/app/constants/icon_path.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_primary_button_widget.dart';
import 'package:atwoz_app/features/auth/presentation/widget/auth_text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AuthSignInPage extends ConsumerStatefulWidget {
  const AuthSignInPage({super.key});

  @override
  AuthSignInPageState createState() => AuthSignInPageState();
}

class AuthSignInPageState extends BaseConsumerStatefulPageState<AuthSignInPage>
    with LogMixin {
  AuthSignInPageState() : super(defaultAppBarTitle: '로그인');
  final TextEditingController _identity = TextEditingController();
  final TextEditingController _password = TextEditingController();

  late final ValueNotifier<String?> errorId;
  late final ValueNotifier<String?> errorPassword;

  @override
  void initState() {
    super.initState();
    errorId = ValueNotifier(null);
    errorPassword = ValueNotifier(null);
  }

  @override
  void dispose() {
    _identity.dispose();
    _password.dispose();
    errorId.dispose();
    errorPassword.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    setState(() {
      errorId.value = _identity.text.isEmpty ? 'ID is required' : null;
      errorPassword.value =
          _password.text.isEmpty ? 'Password is required' : null;
    });

    if (errorId.value == null && errorPassword.value == null) {
      logD('Login 성공 with ID: ${_identity.text}');
    } else {
      logD('Validation failed');
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder<String?>(
          valueListenable: errorId,
          builder: (context, error, child) {
            return AuthTextFormFieldWidget(
              textStyle: Fonts.body01Medium(),
              iconColor: Colors.black,
              hintText: 'Enter your ID',
              icon: IconPath.person,
              validator: (value) => value!.isEmpty ? 'ID is required' : null,
              onChanged: (value) {
                errorId.value = null;
              },
              textEditingController: _identity,
              errorNotify: errorId,
            );
          },
        ),
        const Gap(25),
        ValueListenableBuilder<String?>(
          valueListenable: errorPassword,
          builder: (context, error, child) {
            return AuthTextFormFieldWidget(
              textStyle: Fonts.body01Medium(),
              iconColor: Colors.black,
              hintText: 'Enter your password',
              icon: IconPath.icLock,
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
        AuthPrimaryButtonWidget(
          isLoading: false,
          text: "로그인",
          primary: context.palette.primary,
          onClick: () {
            _validateAndSubmit();
          },
        ),
      ],
    );
  }
}

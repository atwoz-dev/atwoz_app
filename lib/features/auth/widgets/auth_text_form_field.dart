import 'package:flutter/material.dart';
import '../../../core/extension/extended_context.dart';
import '../../../app/constants/fonts.dart';

class AuthTextFormField extends StatefulWidget {
  const AuthTextFormField({
    super.key,
    this.title,
    required this.icon,
    this.iconColor,
    this.obscureText = false,
    this.textEditingController,
    this.onChanged,
    this.onFieldSubmitted,
    this.fieldKey,
    this.validator,
    this.hintText,
    this.initialValue,
    this.textInputAction,
    this.keyboardType,
    required this.errorNotify,
    this.enableInteractiveSelectionOption = true,
    this.textStyle,
  });

  final TextStyle? textStyle;
  final String? title;
  final String icon;
  final Color? iconColor;
  final bool obscureText;
  final TextEditingController? textEditingController;
  final Function(String?)? onChanged;
  final Function(String?)? onFieldSubmitted;
  final GlobalKey<FormFieldState<String>>? fieldKey;
  final FormFieldValidator<String>? validator;
  final String? hintText;
  final String? initialValue;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final ValueNotifier errorNotify;
  final bool enableInteractiveSelectionOption;

  @override
  State<AuthTextFormField> createState() => _AuthTextFormFieldState();
}

class _AuthTextFormFieldState extends State<AuthTextFormField> {
  final FocusNode focusNode = FocusNode();
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = widget.textEditingController ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: focusNode.requestFocus,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: context.screenHeight * 0.02,
              horizontal: context.screenWidth * 0.05,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Focus(
                  onFocusChange: (value) {
                    if (!value) {
                      onFieldSubmit();
                    }
                  },
                  child: TextFormField(
                    style: widget.textStyle,
                    decoration: buildDecoration(context),
                    obscureText: widget.obscureText,
                    onChanged: widget.onChanged,
                    onFieldSubmitted: (value) {
                      onFieldSubmit();
                    },
                    controller: textController,
                    focusNode: focusNode,
                    keyboardType: widget.keyboardType,
                    textInputAction: widget.textInputAction,
                  ),
                )
              ],
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: widget.errorNotify,
          builder: (context, value, child) => Visibility(
            visible: value != null,
            child: Padding(
              padding: EdgeInsets.only(
                left: context.screenWidth * 0.1,
                top: context.screenHeight * 0.01,
              ),
              child: Text(
                value ?? '',
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.body01Medium(context.appColors.error),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void onFieldSubmit() {
    if (widget.onFieldSubmitted != null) {
      widget.onFieldSubmitted!(textController.text);
    }
    if (widget.validator != null) {
      widget.errorNotify.value = widget.validator!(textController.text);
      setState(() {});
    }
  }

  InputDecoration buildDecoration(BuildContext context) {
    return InputDecoration(
      prefixIcon: ColorFiltered(
        colorFilter: ColorFilter.mode(
          widget.iconColor ?? context.appColors.primary,
          BlendMode.srcIn,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.person), // Replace with appropriate icon
        ),
      ),
      isDense: true,
      contentPadding: EdgeInsets.zero,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    );
  }
}

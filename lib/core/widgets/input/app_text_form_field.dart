import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../theme/theme.dart';

Widget buildLabeledRow({
  TextStyle? textStyle,
  required String label,
  required Widget child,
  required BuildContext context,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
    children: [
      SizedBox(
        child: Text(
          label,
          style:
              textStyle ?? AppStyles.body01Medium(context.appColors.onSurface),
        ),
      ),
      const SizedBox(height: 8), // 레이블과 필드 사이 간격 추가
      child,
    ],
  );
}

/// 커스텀 TextField
class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    // Form
    this.fieldKey,
    this.initialValue,
    this.validator,
    this.onSaved,
    this.onFieldSubmitted,
    this.onEditingEnd,
    this.onFocusChange,
    // Text field
    this.controller,
    this.focusNode,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.textCapitalization = TextCapitalization.sentences,
    this.style,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.textDirection,
    this.readOnly = false,
    this.showCursor = true,
    this.autofocus = false,
    this.autocorrect = true,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.enabled,
    this.minLines,
    this.maxLength = 200,
    this.onChanged,
    this.inputFormatters,
    // Decoration
    this.fillColor,
    this.prefix,
    this.suffix,
    this.prefixIcon,
    this.label,
    this.hintText,
    this.hintStyle,
    this.errorText,
    this.suffixIcon,
    this.suffixIconConstraints,
    this.prefixIconConstraints,
    this.contentPadding,
    this.isDense,
    this.underlineColor,
    this.border,
    this.enabledBorder,
    this.disabledBorder,
    this.errorBorder,
    // Scroll
    this.expands = false,
    this.maxLines = 1,
    this.scrollController,
    this.scrollPhysics,
    this.enableInteractiveSelectionOption = true,
    this.onTap,
  });

  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final InputBorder? errorBorder;
  final Color? fillColor;
  final Color? underlineColor;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final Widget? label;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? errorText;
  final BoxConstraints? suffixIconConstraints;
  final BoxConstraints? prefixIconConstraints;
  final EdgeInsets? contentPadding;
  // Form
  final GlobalKey<FormFieldState<String>>? fieldKey;
  final String? initialValue;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onEditingEnd;
  final ValueChanged<bool>? onFocusChange;
  final bool? isDense;
  final bool enableInteractiveSelectionOption;
  // TextField
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;
  final bool readOnly;
  final bool showCursor;
  final bool autofocus;
  final bool autocorrect;
  final bool obscureText;
  final bool enableSuggestions;
  final bool? enabled;
  final int? minLines;
  final int? maxLines;
  final int maxLength;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final GestureTapCallback? onTap;
  final bool expands;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;

  @override
  State<AppTextFormField> createState() => AppTextFormFieldState();
}

class AppTextFormFieldState extends State<AppTextFormField>
    with TextFieldHandler {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(disabledColor: context.appColors.shadow),
      child: GestureDetector(
        onTap: widget.enabled == false ? widget.onTap : null,
        child: TextFormField(
          key: fieldKey,
          focusNode: focusNode,
          controller: controller,
          obscureText: widget.obscureText,
          onChanged: onFieldChange,
          decoration: buildDecoration(context),
          cursorColor: context.appColors.primary,
          showCursor: widget.showCursor,
          style: AppStyles.body01Medium(context.appColors.onSurface),
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          textAlign: widget.textAlign,
          textAlignVertical: widget.textAlignVertical,
          textDirection: widget.textDirection,
          readOnly: widget.readOnly,
          autofocus: widget.autofocus,
          autocorrect: widget.autocorrect,
          enableSuggestions: widget.enableSuggestions,
          enabled: widget.enabled,
          minLines: widget.minLines,
          maxLength: widget.maxLength,
          onFieldSubmitted: widget.onFieldSubmitted,
          inputFormatters: widget.inputFormatters,
          expands: widget.expands,
          maxLines: widget.maxLines,
          scrollController: widget.scrollController,
          scrollPhysics: widget.scrollPhysics,
          onSaved: widget.onSaved,
          validator: widget.validator,
          // autovalidateMode: AutovalidateMode.disabled,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          enableInteractiveSelection: widget.enableInteractiveSelectionOption,
        ),
      ),
    );
  }

  InputDecoration buildDecoration(BuildContext context) {
    // 기본 둥근 테두리
    final InputBorder roundedBorder = OutlineInputBorder(
      borderRadius: AppDimens.buttonRadius, // 기본 둥근 모서리 설정
      borderSide: BorderSide.none, // 테두리 제거두리 색상
    );

    // Error 상태 테두리
    final InputBorder errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(
        color: widget.underlineColor ?? context.appColors.error,
        width: 2.0,
      ),
    );

    return InputDecoration(
      enabled: widget.enabled ?? true,
      contentPadding: widget.contentPadding ??
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
      counterText: '',
      prefix: widget.prefix,
      prefixIcon: widget.prefixIcon,
      prefixIconConstraints: widget.prefixIconConstraints,
      suffix: widget.suffix,
      suffixIcon: widget.suffixIcon,
      suffixIconConstraints: widget.suffixIconConstraints,
      filled: true,
      isDense: widget.isDense,
      fillColor: widget.fillColor ?? context.appColors.surface,
      border: widget.border ?? roundedBorder, // 기본 테두리를 둥근 모서리로 설정
      enabledBorder: widget.enabledBorder ?? roundedBorder, // 활성 상태 둥근 테두리
      disabledBorder: widget.disabledBorder ?? roundedBorder, // 비활성 상태 둥근 테두리
      errorBorder: widget.errorBorder ?? errorBorder, // 에러 상태 테두리
      focusedBorder: widget.errorText == null // 에러 메시지가 없을 때만 포커스 상태 테두리
          ? roundedBorder.copyWith(
              borderSide: BorderSide(
                color: context.appColors.primary,
                width: 2.0,
              ),
            )
          : errorBorder, // 에러 메시지가 있을 때는 에러 테두리 유지
      hintText: widget.hintText,
      hintStyle:
          widget.hintStyle ?? AppStyles.body01Medium(AppColors.colorGrey400),
      errorText: widget.errorText ??
          widget.validator?.call(controller.text), // 유효성 검증 결과
      errorStyle: AppStyles.body01Medium(context.appColors.error),
      label: widget.label,
    );
  }
}

mixin TextFieldHandler on State<AppTextFormField> {
  FocusNode? _focusNode;
  Timer? _debounce;
  GlobalKey<FormFieldState<String>>? fieldKey;
  TextEditingController? _controller;

  FocusNode get focusNode => widget.focusNode ?? (_focusNode ??= FocusNode());

  TextEditingController get controller =>
      widget.controller ?? (_controller ??= TextEditingController());

  @override
  void initState() {
    fieldKey = widget.fieldKey ?? GlobalKey<FormFieldState<String>>();
    super.initState();
    focusNode.addListener(onFocusChange);
    controller.addListener(onControllerChange);
  }

  @override
  void dispose() {
    focusNode.removeListener(onFocusChange);
    controller.removeListener(onControllerChange);
    _focusNode?.dispose();
    _debounce?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  void onFocusChange() {
    widget.onFocusChange?.call(focusNode.hasFocus);
  }

  void onControllerChange() {
    widget.onChanged?.call(controller.text);
  }

  void onFieldChange(String value) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 300), () {
      widget.onEditingEnd?.call(value);
    });
  }
}

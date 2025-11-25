import 'package:atwoz_app/app/constants/palette.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:flutter/material.dart';

class AutoComplete<T extends Object> extends StatefulWidget {
  const AutoComplete({
    super.key,
    required this.optionsBuilder,
    required this.onSubmitted,
    this.fieldViewBuilder,
    this.onSelected,
    this.suffix,
    this.fillColor,

    /// Input view
    this.fieldKey,
    this.initialValue,
    this.focusNode,
    this.textEditingController,
    this.onEditingEnd,
    this.hintText,

    /// Option view
    this.itemStyle, // nullable로 설정
    this.maxLines = 1,

    /// Event
    this.tapOptionSubmit = true,
    this.autoFillOption = true,
  });

  final Widget? suffix;
  final Color? fillColor;
  final Iterable<T> Function(String) optionsBuilder;
  final ValueChanged<T> onSubmitted;
  final AutocompleteFieldViewBuilder? fieldViewBuilder;
  final AutocompleteOnSelected<T>? onSelected;
  // Input view
  final GlobalKey<FormFieldState<String>>? fieldKey;
  final String? initialValue;
  final FocusNode? focusNode;
  final TextEditingController? textEditingController;
  final ValueChanged<String>? onEditingEnd;
  final String? hintText;
  // Option view
  final TextStyle? itemStyle;
  final int? maxLines;
  // Event
  final bool tapOptionSubmit;
  final bool autoFillOption;

  @override
  State<AutoComplete<T>> createState() => _AutoCompleteState<T>();
}

class _AutoCompleteState<T extends Object> extends State<AutoComplete<T>> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  List<T> _options = [];

  @override
  void initState() {
    super.initState();
    _controller = widget.textEditingController ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();

    if (widget.initialValue != null) {
      _controller.text = widget.initialValue!;
    }

    _controller.addListener(_updateOptions);
  }

  void _updateOptions() {
    final query = _controller.text;
    setState(() {
      _options = widget.optionsBuilder(query).toList();
    });
  }

  @override
  void dispose() {
    if (widget.textEditingController == null) {
      _controller.dispose();
    }
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 검색창
        DefaultTextFormField(
          fillColor: widget.fillColor ?? Palette.colorGrey100,
          controller: widget.textEditingController ?? _controller,
          focusNode: widget.focusNode ?? _focusNode,
          suffix: widget.suffix,
          fieldKey: widget.fieldKey,
          hintText: widget.hintText,
          onFieldSubmitted: (value) {
            if (value is T) {
              widget.onSubmitted(value as T);
            }
          },
          onEditingEnd: widget.onEditingEnd,
          onEditingComplete: () {
            final text = _controller.text;
            if (text.isNotEmpty) {
              widget.onSubmitted(text as T); // 입력된 텍스트를 onSubmitted에 전달
            }
          },
        ),

        if (_controller.text.isNotEmpty && _options.isNotEmpty)
          // 검색 결과 리스트뷰
          ListView.builder(
            shrinkWrap: true,
            itemCount: _options.length,
            itemBuilder: (context, index) {
              final option = _options[index];
              return ListTile(
                title: Text(option.toString(), style: widget.itemStyle),
                onTap: () {
                  _controller.text = option.toString(); // 선택된 텍스트 입력 필드에 반영
                  widget.onSubmitted(option); // 선택된 옵션 전달

                  // 강제로 옵션 업데이트
                  _updateOptions();
                },
              );
            },
          ),
      ],
    );
  }
}

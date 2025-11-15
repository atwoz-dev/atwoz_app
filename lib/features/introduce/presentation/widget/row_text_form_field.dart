import 'package:flutter/material.dart';
import 'package:atwoz_app/app/widget/input/default_text_form_field.dart';
import 'package:atwoz_app/features/introduce/presentation/widget/region_select_dialog.dart';
import 'package:atwoz_app/app/constants/constants.dart';

class RowTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final String? initialValue;

  const RowTextFormField({
    super.key,
    required this.label,
    required this.hintText,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildLabeledRow(
          context: context,
          label: label,
          child: DefaultTextFormField(
            initialValue: initialValue,
            controller: TextEditingController(text: initialValue),
            onTap: () {
              Regionselectdialog.open(context);
            },
            enabled: true,
            readOnly: true,
            autofocus: false,
            keyboardType: TextInputType.text,
            hintText: hintText,
            fillColor: Palette.colorGrey100,
          ),
        ),
      ],
    );
  }
}

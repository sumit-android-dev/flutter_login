import 'package:flutter/material.dart';

import '../theme/app_palette.dart';
import '../values/dimens.dart';
import '../values/fonts.dart';

class CommonInputField extends StatefulWidget {
  final String? hint;
  final String? label;
  final TextEditingController? textEditingController;
  final int? minLines;
  final double? padding;
  final TextInputType? textInputType;

  const CommonInputField(
      {super.key,
      required this.hint,
      required this.label,
      this.textEditingController,
      this.minLines,
      this.padding,
      this.textInputType});

  @override
  State<CommonInputField> createState() => _CommonInputFieldState();
}

class _CommonInputFieldState extends State<CommonInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: widget.minLines,
      maxLines: null,
      keyboardType: widget.textInputType ?? TextInputType.text,
      controller: widget.textEditingController,
      style: const TextStyle(
        fontSize: Dimens.normalTextSize,
        color: AppPalette.blackColor,
      ),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: widget.hint,
        labelText: widget.label,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        labelStyle: const TextStyle(
            fontSize: Dimens.normalTextSize,
            fontWeight: FontWeight.normal,
            color: AppPalette.textLabelColor,
            fontFamily: Fonts.interFontFamily),
        hintStyle: const TextStyle(
          fontSize: Dimens.normalTextSize,
          color: AppPalette.greyColor,
        ),
        focusedBorder: _border(),
        enabledBorder: _border(),
      ),
    );
  }

  _border([Color color = AppPalette.borderColor]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      );
}

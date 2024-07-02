import 'package:flutter/material.dart';

import '../values/dimens.dart';
import '../values/fonts.dart';

class CommonTextView extends StatefulWidget {
  final String title;
  final Color textColor;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? fontSize;
  final VoidCallback? onPressed;

  const CommonTextView(
      {super.key,
      required this.title,
      required this.textColor,
      this.fontWeight,
      this.fontSize,
      this.textAlign,
      this.onPressed});

  @override
  State<CommonTextView> createState() => _CommonTextViewState();
}

class _CommonTextViewState extends State<CommonTextView> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      textAlign: widget.textAlign ?? TextAlign.start,
      style: TextStyle(
          fontSize: widget.fontSize ?? Dimens.mediumTextSize,
          color: widget.textColor,
          fontWeight: widget.fontWeight,
          fontFamily: Fonts.interFontFamily,
          height: 1.2),
      maxLines: null,
      overflow: TextOverflow.visible,
    );
  }
}

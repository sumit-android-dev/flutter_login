import 'package:flutter/material.dart';
import 'package:login_page/core/theme/app_palette.dart';
import '../values/fonts.dart';

class CommonButton extends StatefulWidget {
  final String? title;
  final VoidCallback? onPressed;

  const CommonButton({super.key, this.title, required this.onPressed});

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Make button full width
      height: 56,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Set rounded corner radius
          ),
          backgroundColor: AppPalette.buttonColor,
        ),
        child: Text(
          widget.title ?? "",
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: Fonts.interFontFamily),
        ),
      ),
    );
  }
}

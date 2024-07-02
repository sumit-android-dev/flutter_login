import 'package:flutter/material.dart';
import 'package:login_page/core/theme/app_palette.dart';

import '../widgets/common_text_view.dart';

class AppTheme {

  /// App bar title.
  static AppBar appBarView(String appBarTitle) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: AppPalette.whiteColor, //change your color here
      ),
      title: CommonTextView(
          title: appBarTitle,
          textColor: AppPalette.whiteColor,
          fontSize: 20.0,
          fontWeight: FontWeight.w500),
    );
  }

  /// Theme Data.
  static final themeMode = ThemeData(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPalette.appBarColor,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:login_page/core/theme/theme.dart';
import 'package:login_page/features/auth/presentation/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: AppTheme.themeMode,
      home: const LoginScreen(),
    );
  }
}

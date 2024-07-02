import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/core/theme/theme.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTheme.appBarView("Form"),
      body: Container(),
    );
  }
}

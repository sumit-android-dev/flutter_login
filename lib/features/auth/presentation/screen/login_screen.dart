import 'package:flutter/material.dart';
import 'package:login_page/core/theme/theme.dart';
import 'package:login_page/core/utils/Ext.dart';
import 'package:login_page/features/auth/presentation/screen/otp_screen.dart';

import '../../../../core/values/image_assets.dart';
import '../../../../core/widgets/common_button.dart';
import '../../../../core/widgets/common_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTheme.appBarView("Login"),
      body: _buildLoginView(),
    );
  }

  /// Validate login fields.
  void _validate() {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const OtpScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0); // Start the animation from the bottom
          const end = Offset.zero; // End the animation at the current position
          const curve = Curves.ease;
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }

  /// Login Screen Section View.
  Widget _buildLoginView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _appLogoImage(),
          _phoneInputField(),
          heightSizedBox(32.0),
          _getOTPButton(),
        ],
      ),
    );
  }

  /// Get Otp button view.
  Widget _getOTPButton() {
    return CommonButton(
      onPressed: () {
        _validate();
      },
      title: "Get OTP",
    );
  }

  /// Phone number input field.
  Widget _phoneInputField() {
    return const CommonInputField(
        hint: "Phone Number",
        textInputType: TextInputType.phone,
        label: "Phone Number");
  }

  /// App logo image.
  Widget _appLogoImage() {
    return Image.asset(
      ImageAssets.appIcon,
      fit: BoxFit.fill,
      height: 120,
      width: 120,
    );
  }
}

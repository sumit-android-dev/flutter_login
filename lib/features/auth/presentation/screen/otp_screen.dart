import 'package:flutter/material.dart';
import 'package:login_page/core/theme/theme.dart';
import 'package:login_page/core/utils/Ext.dart';
import 'package:login_page/features/home/presentation/screen/home_screen.dart';

import '../../../../core/utils/otp_pin.dart';
import '../../../../core/values/image_assets.dart';
import '../../../../core/widgets/common_button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppTheme.appBarView("OTP Verification"),
      body: _buildOTPView(),
    );
  }

  /// OTP Screen Section View.
  Widget _buildOTPView() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _appLogoImage(),
          _otpPinView(),
          heightSizedBox(24.0),
          _buildSubmitButton()
        ],
      ),
    );
  }

  /// Validate otp.
  void _validate() {
    Navigator.pushAndRemoveUntil<dynamic>(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
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
      (route) => false, //if you want to disable back feature set to false
    );
  }

  /// Submit button view.
  Widget _buildSubmitButton() {
    return CommonButton(
      onPressed: () {
        _validate();
      },
      title: "Submit",
    );
  }

  /// Otp pin view.
  Widget _otpPinView() {
    return FlutterOtpField(
      inputFieldLength: 6,
      spaceBetweenFields: 10,
      onValueChange: (String value) {
        print("otp changed $value");
      },
      onCompleted: (String value) {
        print("otp  $value");
      },
    );
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

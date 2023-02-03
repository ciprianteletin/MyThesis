import 'package:flutter/material.dart';
import 'package:my_thesis/page/Auth/ForgotPassword/widgets/forgot_form.dart';
import 'package:my_thesis/widgets/background.dart';
import 'package:my_thesis/widgets/screen_top_image.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routeName = "/forgot-password-screen";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: ForgotPasswordScreenImpl(),
      ),
    );
  }
}

class ForgotPasswordScreenImpl extends StatelessWidget {
  const ForgotPasswordScreenImpl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScreenTopImage(Image.asset('assets/reset_password_girl.jpg')),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: ForgotForm(),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}

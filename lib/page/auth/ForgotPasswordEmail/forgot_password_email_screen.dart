import 'package:flutter/material.dart';
import 'package:my_thesis/page/Auth/ForgotPasswordEmail/widgets/forgot_mail_form.dart';
import 'package:my_thesis/widgets/background.dart';

import '../../../widgets/screen_top_image.dart';

class ForgotPasswordEmailScreen extends StatelessWidget {
  static const routeName = "/forgot-password-email-screen";
  const ForgotPasswordEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: ForgotPasswordEmailScreenImpl(),
      ),
    );
  }
}

class ForgotPasswordEmailScreenImpl extends StatelessWidget {
  const ForgotPasswordEmailScreenImpl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScreenTopImage(Image.asset('assets/reset_mail_girl.jpg')),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: ForgotMailForm(),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}

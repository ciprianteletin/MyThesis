import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_thesis/widgets/background.dart';
import 'package:my_thesis/widgets/auth/social_icon_group.dart';
import 'package:my_thesis/widgets/screen_top_image.dart';
import 'widgets/signup_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: MobileSignupScreen(),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScreenTopImage(SvgPicture.asset("assets/signup.svg")),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(),
            ),
            const Spacer(),
          ],
        ),
        const SocialIconGroup()
      ],
    );
  }
}

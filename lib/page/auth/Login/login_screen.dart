import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_thesis/size_config.dart';
import 'package:my_thesis/widgets/background.dart';
import 'package:my_thesis/widgets/auth/social_icon_group.dart';
import 'package:my_thesis/widgets/screen_top_image.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = "/login-screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: LoginScreenImpl(),
      ),
    );
  }
}

class LoginScreenImpl extends StatelessWidget {
  const LoginScreenImpl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScreenTopImage(SvgPicture.asset("assets/login.svg")),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            const Spacer(),
          ],
        ),
        const SocialIconGroup()
      ],
    );
  }
}

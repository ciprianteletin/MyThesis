import 'package:flutter/material.dart';
import 'package:my_thesis/widgets/auth/or_divider.dart';
import 'package:my_thesis/widgets/auth/social_icon.dart';

class SocialIconGroup extends StatelessWidget {
  const SocialIconGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(
              iconSrc: "assets/facebook.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/twitter.svg",
              press: () {},
            ),
            SocialIcon(
              iconSrc: "assets/google-plus.svg",
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}

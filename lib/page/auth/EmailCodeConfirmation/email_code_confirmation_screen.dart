import 'package:flutter/material.dart';
import 'package:my_thesis/page/Auth/EmailCodeConfirmation/widget/confirm_email_code_form.dart';
import 'package:my_thesis/widgets/background.dart';
import 'package:my_thesis/widgets/screen_top_image.dart';

class ConfirmEmailCodeScreen extends StatelessWidget {
  static const routeName = "/confirm-code-screen";
  const ConfirmEmailCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: ConfirmEmailCodeScreenImpl(),
      ),
    );
  }
}

class ConfirmEmailCodeScreenImpl extends StatelessWidget {
  const ConfirmEmailCodeScreenImpl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScreenTopImage(Image.asset('assets/confirm_mail_code.jpg')),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: ConfirmEmailForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

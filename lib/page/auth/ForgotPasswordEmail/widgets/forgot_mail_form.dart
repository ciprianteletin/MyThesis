import 'package:flutter/material.dart';

import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/page/Auth/EmailCodeConfirmation/email_code_confirmation_screen.dart';
import 'package:my_thesis/widgets/auth/rounded_field.dart';
import 'package:my_thesis/widgets/rounded_button.dart';

class ForgotMailForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _formData = <String, String>{};
  ForgotMailForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          RoundedInputField(
            hintText: 'Your Email',
            icon: Icons.person,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Your email address is mandatory';
              }
              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(value);
              if (!emailValid) {
                return 'The email address is incorect';
              }
              return null;
            },
            onSaved: (value) {
              if (value == null || value.isEmpty) {
                return;
              }
              _formData['email'] = value;
            },
          ),
          const SizedBox(
            height: defaultPadding * 2,
          ),
          Hero(
              tag: "auth_btn",
              child: RoundedButton(
                text: 'SEND CONFIRMATION CODE',
                onPress: () {
                  Navigator.pushReplacementNamed(
                      context, ConfirmEmailCodeScreen.routeName);
                },
                color: kPrimaryColor,
                textColor: Colors.white,
              )),
          const SizedBox(height: defaultPadding * 2),
        ],
      ),
    );
  }
}

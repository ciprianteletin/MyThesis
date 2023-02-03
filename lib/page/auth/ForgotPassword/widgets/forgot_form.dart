import 'package:flutter/material.dart';

import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/page/Auth/Login/login_screen.dart';
import 'package:my_thesis/widgets/auth/rounded_password_field.dart';
import 'package:my_thesis/widgets/rounded_button.dart';

class ForgotForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _formData = <String, String>{};
  ForgotForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          RoundedPasswordField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'The password cannot be empty';
              }
              if (value.length < 8) {
                return 'The password should have at least 8 characters';
              }
              return null;
            },
            onSaved: (value) {
              if (value == null || value.isEmpty) {
                return;
              }
              _formData['password'] = value;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: RoundedPasswordField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'The password cannot be empty';
                }
                if (value.length < 8) {
                  return 'The password should have at least 8 characters';
                }
                return null;
              },
              onSaved: (value) {
                if (value == null || value.isEmpty) {
                  return;
                }
                _formData['confirmPassword'] = value;
              },
            ),
          ),
          const SizedBox(
            height: defaultPadding * 3,
          ),
          Hero(
              tag: "auth_btn",
              child: RoundedButton(
                text: 'RESET PASSWORD',
                onPress: () {
                  Navigator.of(context)
                      .pushReplacementNamed(LoginScreen.routeName);
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

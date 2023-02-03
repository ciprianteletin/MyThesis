import 'package:flutter/material.dart';
import 'package:my_thesis/navigation/entry_point.dart';
import 'package:my_thesis/page/home_page.dart';
import 'package:provider/provider.dart' as provider;
import 'package:my_thesis/page/Auth/ForgotPasswordEmail/forgot_password_email_screen.dart';

import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/widgets/already_have_an_account_acheck.dart';
import 'package:my_thesis/widgets/auth/rounded_field.dart';
import 'package:my_thesis/widgets/auth/rounded_password_field.dart';
import 'package:my_thesis/widgets/rounded_button.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../provider/auth_provider.dart';
import '../../../../utils/snack_bar_utils.dart';
import '../../Signup/signup_screen.dart';

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _formData = <String, String>{};
  LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthProvider auth =
        provider.Provider.of<AuthProvider>(context, listen: false);
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
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9\-]+\.[a-zA-Z]+")
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
                _formData['password'] = value;
              },
            ),
          ),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ForgotPasswordEmailScreen.routeName);
                },
                child: const Text(
                  'Forgot your password?',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Hero(
              tag: "auth_btn",
              child: RoundedButton(
                text: 'LOGIN',
                onPress: () async {
                  NavigatorState navigator = Navigator.of(context);
                  ScaffoldMessengerState messenger =
                      ScaffoldMessenger.of(context);
                  bool isValid = _formKey.currentState!.validate();
                  if (!isValid) {
                    return;
                  }
                  _formKey.currentState!.save();
                  try {
                    final SupabaseClient supabase = Supabase.instance.client;
                    final AuthResponse res =
                        await supabase.auth.signInWithPassword(
                      email: _formData['email'],
                      password: _formData['password']!,
                    );
                    final Session? session = res.session;
                    final User? user = res.user;
                    auth.setAuthData(session, user);
                    navigator.pushReplacement(MaterialPageRoute(
                        builder: (ctx) => const EntryPoint(HomePage())));
                  } on AuthException {
                    SnackBarUtils.displaySnackBar(
                        messenger, 'Invalid email or password');
                    return;
                  }
                },
                color: kPrimaryColor,
                textColor: Colors.white,
              )),
          const SizedBox(height: defaultPadding * 2),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

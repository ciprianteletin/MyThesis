import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/page/Auth/ForgotPassword/forgot_password_screen.dart';
import 'package:my_thesis/widgets/auth/or_divider.dart';
import 'package:my_thesis/widgets/rounded_button.dart';

class ConfirmEmailForm extends StatelessWidget {
  const ConfirmEmailForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.deepPurpleAccent,
                    width: 2.5,
                  ),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) => {
                    if (value.length == 1) {FocusScope.of(context).nextFocus()}
                  },
                  onSaved: (value) => {},
                  decoration: const InputDecoration(
                    hintText: '0',
                    border: InputBorder.none,
                  ),
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.deepPurpleAccent,
                    width: 2.5,
                  ),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6,
                  onChanged: (value) => {
                    if (value.length == 1) {FocusScope.of(context).nextFocus()}
                  },
                  onSaved: (value) => {},
                  decoration: const InputDecoration(
                    hintText: '0',
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.deepPurpleAccent,
                    width: 2.5,
                  ),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6,
                  onChanged: (value) => {
                    if (value.length == 1) {FocusScope.of(context).nextFocus()}
                  },
                  onSaved: (value) => {},
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: '0',
                    border: InputBorder.none,
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.deepPurpleAccent,
                    width: 2.5,
                  ),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  onSaved: (value) => {},
                  style: Theme.of(context).textTheme.headline6,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: '0',
                    border: InputBorder.none,
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding * 2),
          Hero(
              tag: "auth_btn",
              child: RoundedButton(
                text: 'CCONFIRM EMAIL',
                onPress: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ForgotPasswordScreen.routeName);
                },
                color: kPrimaryColor,
                textColor: Colors.white,
              )),
          const SizedBox(height: defaultPadding),
          const OrDivider(),
          const SizedBox(height: defaultPadding),
          RoundedButton(
            text: 'RESEND CODE',
            onPress: () {},
            color: kDarkGreyColor,
            textColor: Colors.black87,
          ),
        ],
      ),
    );
  }
}

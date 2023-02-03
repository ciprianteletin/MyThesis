import 'package:flutter/material.dart';
import 'package:my_thesis/navigation/entry_point.dart';
import 'package:my_thesis/page/home_page.dart';
import 'package:provider/provider.dart' as provider;

import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/widgets/auth/rounded_field.dart';
import 'package:my_thesis/widgets/rounded_button.dart';
import '../../../../provider/auth_provider.dart';

class AdditionalDetailForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _formData = <String, String>{};
  AdditionalDetailForm({
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
            hintText: 'ID',
            icon: Icons.person,
            validator: (value) {},
            onSaved: (value) {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: RoundedInputField(
              hintText: 'Name',
              icon: Icons.person,
              validator: (value) {},
              onSaved: (value) {},
            ),
          ),
          RoundedInputField(
            hintText: 'Surname',
            icon: Icons.person,
            validator: (value) {},
            onSaved: (value) {},
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Hero(
              tag: "auth_btn",
              child: RoundedButton(
                text: 'COMPLETE PROCESS',
                onPress: () async {
                  NavigatorState navigator = Navigator.of(context);
                  ScaffoldMessengerState messenger =
                      ScaffoldMessenger.of(context);
                  bool isValid = _formKey.currentState!.validate();
                  if (!isValid) {
                    return;
                  }
                  _formKey.currentState!.save();
                  navigator.pushReplacement(MaterialPageRoute(
                      builder: (ctx) => const EntryPoint(HomePage())));
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

import 'package:flutter/material.dart';
import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/widgets/text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  const RoundedPasswordField(
      {Key? key, required this.validator, required this.onSaved})
      : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(TextFormField(
      onSaved: widget.onSaved,
      validator: widget.validator,
      obscureText: isInvisible,
      decoration: InputDecoration(
          hintText: 'Password',
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: GestureDetector(
            onTap: () => setState(() => isInvisible = !isInvisible),
            child: Icon(
              isInvisible ? Icons.visibility : Icons.visibility_off,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none),
    ));
  }
}

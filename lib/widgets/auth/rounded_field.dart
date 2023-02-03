import 'package:flutter/material.dart';
import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/widgets/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final void Function(String?) onSaved;
  final String? Function(String?) validator;
  const RoundedInputField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.validator,
      required this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(TextFormField(
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryColor),
          hintText: hintText,
          border: InputBorder.none),
    ));
  }
}

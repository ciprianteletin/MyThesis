import 'package:flutter/material.dart';
import 'package:my_thesis/app_styles.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer(this.child);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kDarkWhiteColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

import 'package:my_thesis/app_styles.dart';

class ScreenTopImage extends StatelessWidget {
  final Widget child;
  const ScreenTopImage(
    this.child, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Image.asset('assets/Logo_Header.png'),
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: child,
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}

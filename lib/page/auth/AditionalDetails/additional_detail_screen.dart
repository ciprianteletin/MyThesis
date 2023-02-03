import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_thesis/page/auth/AditionalDetails/widgets/additional_detail_form.dart';

import '../../../widgets/background.dart';
import '../../../widgets/screen_top_image.dart';

class AdditionalDetailsScreen extends StatelessWidget {
  static const routeName = "/details-screen";
  const AdditionalDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: AdditionalDetailsScreenImpl(),
      ),
    );
  }
}

class AdditionalDetailsScreenImpl extends StatelessWidget {
  const AdditionalDetailsScreenImpl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ScreenTopImage(Image.asset("assets/students_detail.png")),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: AdditionalDetailForm(),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}

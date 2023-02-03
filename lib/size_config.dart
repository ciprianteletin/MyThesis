import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockScreenHorizontal;
  static double? blockScreenVertical;

  static late double topInsets;
  static late double topPadding;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockScreenHorizontal = screenWidth! / 100;
    blockScreenVertical = screenHeight! / 100;

    topPadding = _mediaQueryData!.padding.top;
    topInsets = _mediaQueryData!.viewInsets.top;
  }
}

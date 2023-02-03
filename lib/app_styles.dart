import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_thesis/size_config.dart';

const Color kPurpleColor = Color(0xff5041FF);
const Color kYellowColor = Color(0xffFFB41C);
const Color kDarkWhiteColor = Color(0xffEBEDF1);
const Color kDarkGreyColor = Color.fromARGB(255, 188, 194, 201);
const Color kBlackColor = Color(0xff172B4D);
const Color kLightBlackColor = Color(0xff434F65);

const kPrimaryColor = Color(0xFF6F35A5);

const kCardColor = Color(0xFF282B30);
const kHourColor = Color(0xFFF5C35A);
const kBGColor = Color(0xFF343537);

const kTextColor = Color(0xFF6C7174);

const kCalendarDay = TextStyle(
  color: kTextColor,
  fontSize: 16.0,
);

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

class DarkGreyColors {
  static final darkGrey1 = _colorFromHex('#979D97');
  static final darkGrey2 = _colorFromHex('#656E85');
  static final darkGrey3 = _colorFromHex('#5C657D');
  static final darkGrey4 = _colorFromHex('#5E695F');
  static final darkGrey5 = _colorFromHex('#49536E');
  static final darkGrey6 = _colorFromHex('#445350');
  static final darkGrey7 = _colorFromHex('#364945');
  static final darkGrey8 = _colorFromHex('#2F4541');
  static final darkGrey9 = _colorFromHex('#213531');
}

class LightGreyColors {
  static final lightGrey1 = _colorFromHex('#FAFAFB');
  static final lightGrey2 = _colorFromHex('#F5F6F7');
  static final lightGrey3 = _colorFromHex('#EEEFF2');
  static final lightGrey4 = _colorFromHex('#E2E4E8');
  static final lightGrey5 = _colorFromHex('#CACDD5');
  static final lightGrey6 = _colorFromHex('#B2B7C2');
  static final lightGrey7 = _colorFromHex('#A4A9B6');
  static final lightGrey8 = _colorFromHex('#959CAB');
  static final lightGrey9 = _colorFromHex('#8C93A3');
  static final productWeightGrey = _colorFromHex('#C0C0C0');
}

const double defaultPadding = 16.0;

final kTitleOnboarding = GoogleFonts.inter(
    fontSize: SizeConfig.blockScreenHorizontal! * 7,
    color: kPrimaryColor,
    fontWeight: FontWeight.bold);

final kSubtitleOnboarding = GoogleFonts.inter(
  fontSize: SizeConfig.blockScreenHorizontal! * 4,
  color: kPurpleColor,
);

final kTextButton = GoogleFonts.inter(
    color: kPurpleColor,
    fontSize: SizeConfig.blockScreenHorizontal! * 4.5,
    fontWeight: FontWeight.bold);

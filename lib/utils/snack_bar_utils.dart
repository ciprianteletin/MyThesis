import 'package:flutter/material.dart';
import 'package:my_thesis/app_styles.dart';

class SnackBarUtils {
  static void displaySnackBar(
      ScaffoldMessengerState messenger, String content) {
    messenger.showSnackBar(SnackBar(
      content: Text(
        content,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      backgroundColor: kPrimaryColor,
    ));
  }
}

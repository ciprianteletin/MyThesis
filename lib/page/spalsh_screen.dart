import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_thesis/page/Auth/Login/login_screen.dart';
import 'package:my_thesis/page/onboarding/onboarding.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../navigation/entry_point.dart';
import '../provider/auth_provider.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthProvider auth = Provider.of<AuthProvider>(context, listen: false);
    bool isAuth = auth.isAuth();
    return AnimatedSplashScreen(
      splash: Image.asset('assets/Logo_Header.png'),
      backgroundColor: Colors.deepPurpleAccent,
      nextScreen: seenOnboard == true
          ? (isAuth ? const EntryPoint(HomePage()) : const LoginScreen())
          : const OnboardingPage(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.slideTransition,
      animationDuration: const Duration(seconds: 1),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_thesis/page/Auth/EmailCodeConfirmation/email_code_confirmation_screen.dart';
import 'package:my_thesis/page/Auth/ForgotPassword/forgot_password_screen.dart';
import 'package:my_thesis/page/Auth/ForgotPasswordEmail/forgot_password_email_screen.dart';
import 'package:my_thesis/page/Auth/Login/login_screen.dart';
import 'package:my_thesis/page/auth/AditionalDetails/additional_detail_screen.dart';
import 'package:my_thesis/page/home_page.dart';
import 'package:my_thesis/page/spalsh_screen.dart';
import 'package:my_thesis/provider/auth_provider.dart';
import 'package:my_thesis/provider/menu_provider.dart';
import 'package:provider/provider.dart' as provider;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  await dotenv.load();
  await Supabase.initialize(
    url: dotenv.get('SUPABASE_URL'),
    anonKey: dotenv.get('SUPABASE_ANON_KEY'),
  );
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  seenOnboard = prefs.getBool('seenOnboard') ?? false;
  runApp(provider.MultiProvider(
    providers: [
      provider.ChangeNotifierProvider(create: (context) => AuthProvider()),
      provider.ChangeNotifierProvider(create: (context) => MenuProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthProvider auth =
        provider.Provider.of<AuthProvider>(context, listen: false);
    auth.listen();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyThesis',
      home: const SplashScreen(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        ForgotPasswordScreen.routeName: (context) =>
            const ForgotPasswordScreen(),
        ForgotPasswordEmailScreen.routeName: (context) =>
            const ForgotPasswordEmailScreen(),
        ConfirmEmailCodeScreen.routeName: (context) =>
            const ConfirmEmailCodeScreen(),
        AdditionalDetailsScreen.routeName: (context) =>
            const AdditionalDetailsScreen(),
      },
    );
  }
}

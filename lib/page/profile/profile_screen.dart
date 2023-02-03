import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_thesis/app_styles.dart';
import 'package:my_thesis/navigation/entry_point.dart';
import 'package:my_thesis/page/auth/Login/login_screen.dart';
import 'package:my_thesis/page/profile/update_profile_screen.dart';
import 'package:my_thesis/page/profile/widget/profile_menu.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart' as provider;

import '../../provider/auth_provider.dart';
import '../../provider/menu_provider.dart';
import '../../utils/snack_bar_utils.dart';
import '../Auth/ForgotPassword/forgot_password_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider =
        provider.Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 223),
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 50),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/avatars/Avatar Default.jpg'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.deepPurpleAccent),
                      child: const Icon(LineAwesomeIcons.alternate_pencil,
                          color: Colors.black, size: 20),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Username',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'Email',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => EntryPoint(UpdateProfileScreen())));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget("Settings", LineAwesomeIcons.cog, () {}, true),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget("Change password", LineAwesomeIcons.lock_open,
                  () {
                Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName);
              }, true),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                  "Clear message history", LineAwesomeIcons.history, () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          title: const Text('Delete message history'),
                          content: const Text(
                              'Are you sure that you want to remove the entire message history? This change is not reversible'),
                          actions: [
                            TextButton(
                              child: const Text('Ok'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                SnackBarUtils.displaySnackBar(
                                    ScaffoldMessenger.of(context),
                                    'The message history was removed with success');
                              },
                            ),
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        ));
              }, true),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                "Logout",
                LineAwesomeIcons.alternate_sign_out,
                () async {
                  MenuProvider menuProvider =
                      provider.Provider.of<MenuProvider>(context,
                          listen: false);
                  NavigatorState navigator = Navigator.of(context);
                  ScaffoldMessengerState messenger =
                      ScaffoldMessenger.of(context);
                  SupabaseClient supabase = Supabase.instance.client;
                  await supabase.auth.signOut();
                  menuProvider.resetBars();
                  authProvider.logout();
                  navigator.pushReplacementNamed(LoginScreen.routeName);
                  SnackBarUtils.displaySnackBar(
                      messenger, 'You have been disconnected with success');
                },
                false,
                textColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

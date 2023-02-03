import 'package:flutter/material.dart';
import 'package:my_thesis/provider/auth_provider.dart';
import 'package:my_thesis/provider/menu_provider.dart';
import 'package:provider/provider.dart';

import '../../../model/menu.dart';
import '../../../utils/rive_utils.dart';
import 'info_card.dart';
import 'side_menu.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    Menu selectedSideMenu =
        Provider.of<MenuProvider>(context, listen: false).selectedSideMenu;
    final AuthProvider auth = Provider.of<AuthProvider>(context, listen: false);
    final List<Menu> sidebarMenus =
        auth.isStudent ? studentSidebarMenus : teacherSidebarMenus;
    final List<Menu> sidebarTwoMenus =
        auth.isStudent ? studentSidebarMenus2 : teacherSidebarMenus2;
    final NavigatorState navigator = Navigator.of(context);
    return SafeArea(
      child: Container(
        width: 288,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF17203A),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoCard(
                name: "Utilizator",
                bio: auth.isStudent ? "Student" : "Teacher",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                child: Text(
                  "Browse".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              ...sidebarMenus
                  .map((menu) => SideMenu(
                        menu: menu,
                        selectedMenu: selectedSideMenu,
                        press: () {
                          RiveUtils.chnageSMIBoolState(menu.rive.status!);
                          setState(() {
                            Provider.of<MenuProvider>(context, listen: false)
                                .selectedSideMenu = menu;
                            selectedSideMenu = menu;
                          });
                          Future.delayed(
                              const Duration(seconds: 1),
                              () => navigator.pushReplacement(MaterialPageRoute(
                                  builder: (ctx) => menu.attachedInstance)));
                        },
                        riveOnInit: (artboard) {
                          menu.rive.status = RiveUtils.getRiveInput(artboard,
                              stateMachineName: menu.rive.stateMachineName);
                        },
                      ))
                  .toList(),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 40, bottom: 16),
                child: Text(
                  "Calendar".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              ...sidebarTwoMenus
                  .map((menu) => SideMenu(
                        menu: menu,
                        selectedMenu: selectedSideMenu,
                        press: () {
                          RiveUtils.chnageSMIBoolState(menu.rive.status!);
                          setState(() {
                            Provider.of<MenuProvider>(context, listen: false)
                                .selectedSideMenu = menu;
                            selectedSideMenu = menu;
                          });
                          Future.delayed(
                              const Duration(seconds: 1),
                              () => navigator.pushReplacement(MaterialPageRoute(
                                  builder: (ctx) => menu.attachedInstance)));
                        },
                        riveOnInit: (artboard) {
                          menu.rive.status = RiveUtils.getRiveInput(artboard,
                              stateMachineName: menu.rive.stateMachineName);
                        },
                      ))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}

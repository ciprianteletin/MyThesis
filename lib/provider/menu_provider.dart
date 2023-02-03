import 'package:flutter/material.dart';

import '../model/menu.dart';

class MenuProvider extends ChangeNotifier {
  Menu selectedBottomNavBar = bottomStudentNavItems.first;
  Menu selectedSideMenu = studentSidebarMenus.first;

  void setSelectedBottomNavBar(Menu selectedMenu) {
    selectedBottomNavBar = selectedMenu;
  }

  void setSelectedSideMenu(Menu selectedMenu) {
    selectedSideMenu = selectedMenu;
  }

  void resetBars() {
    selectedBottomNavBar = bottomStudentNavItems.first;
    selectedSideMenu = studentSidebarMenus.first;
  }
}

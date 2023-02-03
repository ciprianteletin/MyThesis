import 'package:my_thesis/navigation/entry_point.dart';
import 'package:my_thesis/page/home_page.dart';
import 'package:my_thesis/page/notification/schedule_screen.dart';

import '../page/chat/chat_messages_screen.dart';
import '../page/profile/profile_screen.dart';
import '../page/task/task_page.dart';
import 'rive_model.dart';
import 'package:flutter/material.dart';

class Menu {
  final String title;
  final RiveModel rive;
  final Widget attachedInstance;

  Menu(
      {required this.title,
      required this.rive,
      required this.attachedInstance});
}

List<Menu> studentSidebarMenus = [
  Menu(
    title: "Home",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "HOME",
        stateMachineName: "HOME_interactivity"),
  ),
  Menu(
    title: "Search",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "SEARCH",
        stateMachineName: "SEARCH_Interactivity"),
  ),
  Menu(
    title: "Settings",
    attachedInstance: const EntryPoint(ProfileScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "SETTINGS",
        stateMachineName: "SETTINGS_Interactivity"),
  ),
  Menu(
      title: 'Task List',
      attachedInstance: const EntryPoint(TasksPage()),
      rive: RiveModel(
          src: "assets/RiveAssets/document_icon.riv",
          artboard: "New Artboard",
          stateMachineName: "State Machine 1")),
  Menu(
    title: "Chat",
    attachedInstance: EntryPoint(ChatMessagesScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
  ),
];

List<Menu> teacherSidebarMenus = [
  Menu(
    title: "Home",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "HOME",
        stateMachineName: "HOME_interactivity"),
  ),
  Menu(
    title: "Search",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "SEARCH",
        stateMachineName: "SEARCH_Interactivity"),
  ),
  Menu(
    title: "Settings",
    attachedInstance: const EntryPoint(ProfileScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "SETTINGS",
        stateMachineName: "SETTINGS_Interactivity"),
  ),
  Menu(
      title: 'Students',
      attachedInstance: const EntryPoint(TasksPage()),
      rive: RiveModel(
          src: "assets/RiveAssets/academic_cap.riv",
          artboard: "academic-cap",
          stateMachineName: "State Machine 1")),
  Menu(
    title: "Chat",
    attachedInstance: EntryPoint(ChatMessagesScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
  ),
];

List<Menu> studentSidebarMenus2 = [
  Menu(
    title: "Calendar",
    attachedInstance: EntryPoint(CalendarScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "TIMER",
        stateMachineName: "TIMER_Interactivity"),
  ),
  Menu(
    title: "Notifications",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "BELL",
        stateMachineName: "BELL_Interactivity"),
  ),
];

List<Menu> teacherSidebarMenus2 = [
  Menu(
    title: "Calendar",
    attachedInstance: EntryPoint(CalendarScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "TIMER",
        stateMachineName: "TIMER_Interactivity"),
  ),
  Menu(
    title: "Notifications",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "BELL",
        stateMachineName: "BELL_Interactivity"),
  ),
];

List<Menu> bottomStudentNavItems = [
  Menu(
    title: "Home",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "HOME",
        stateMachineName: "HOME_interactivity"),
  ),
  Menu(
    title: "Chat",
    attachedInstance: EntryPoint(ChatMessagesScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
  ),
  Menu(
      title: 'Task List',
      attachedInstance: const EntryPoint(TasksPage()),
      rive: RiveModel(
          src: "assets/RiveAssets/document_icon.riv",
          artboard: "New Artboard",
          stateMachineName: "State Machine 1")),
  Menu(
    title: "Search",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "SEARCH",
        stateMachineName: "SEARCH_Interactivity"),
  ),
  Menu(
    title: "Profile",
    attachedInstance: const EntryPoint(ProfileScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "USER",
        stateMachineName: "USER_Interactivity"),
  ),
];

List<Menu> bottomTeacherNavItems = [
  Menu(
    title: "Home",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "HOME",
        stateMachineName: "HOME_interactivity"),
  ),
  Menu(
    title: "Chat",
    attachedInstance: EntryPoint(ChatMessagesScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
  ),
  Menu(
      title: 'Students',
      attachedInstance: const EntryPoint(TasksPage()),
      rive: RiveModel(
          src: "assets/RiveAssets/academic_cap.riv",
          artboard: "academic-cap",
          stateMachineName: "State Machine 1")),
  Menu(
    title: "Search",
    attachedInstance: const EntryPoint(HomePage()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "SEARCH",
        stateMachineName: "SEARCH_Interactivity"),
  ),
  Menu(
    title: "Profile",
    attachedInstance: const EntryPoint(ProfileScreen()),
    rive: RiveModel(
        src: "assets/RiveAssets/icons.riv",
        artboard: "USER",
        stateMachineName: "USER_Interactivity"),
  ),
];

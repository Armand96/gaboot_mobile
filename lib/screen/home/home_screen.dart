import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';
// import 'package:gaboot_mobile/ui_collection/button/button.dart';
// import 'package:gaboot_mobile/ui_collection/color_system.dart';
import 'package:gaboot_mobile/ui_collection/comp/bottom_nav_bar.dart';
// import 'package:gaboot_mobile/ui_collection/form/text_form.dart';
import 'package:gaboot_mobile/ui_collection/gradien_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  List<Widget> screenList = const [
    Center(
      child: Text("Index 0"),
    ),
    Center(
      child: Text("Index 1"),
    ),
    Center(
      child: Text("Index 2"),
    ),
    Center(
      child: Text("Index ke 3"),
    )
  ];

  List<BottomNavigationBarItem> listItem = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Badge(child: Icon(Icons.notifications_outlined)),
      label: 'Notifications',
    ),
    BottomNavigationBarItem(
      icon: Badge(
        label: Text('2'),
        child: Icon(Icons.messenger_outline),
      ),
      label: 'Messages',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.school_outlined), label: "Test")
  ];

  List<PreferredSizeWidget?> appBars = const [
    GradientAppBar(),
    null,
    null,
    null
  ];

  void changeScreen(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const GradientAppBar(),
      appBar: appBars[currentPageIndex],
      bottomNavigationBar: BottomNavbar(
        listIcon: listItem,
        onTap: changeScreen,
        currentPageIndex: currentPageIndex,
      ),
      body: screenList[currentPageIndex],
    );
  }

}

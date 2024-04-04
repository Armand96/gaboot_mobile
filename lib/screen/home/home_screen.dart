import 'package:flutter/material.dart';
import 'package:gaboot_mobile/screen/home/homebase/homebase_screen.dart';
// import 'package:gaboot_mobile/testscreen/custscrollview.dart';
// import 'package:gaboot_mobile/testscreen/sliverappbar.dart';
// import 'package:gaboot_mobile/ui_collection/color_system.dart';
// import 'package:gaboot_mobile/ui_collection/button/button.dart';
// import 'package:gaboot_mobile/ui_collection/color_system.dart';
import 'package:gaboot_mobile/ui_collection/comp/bottom_nav_bar.dart';
// import 'package:gaboot_mobile/ui_collection/form/text_form.dart';
// import 'package:gaboot_mobile/ui_collection/gradien_appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  List<Widget> screenList = const [
    Placeholder(),
    // CustScrollView(),
    Placeholder(),
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
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
      icon: Badge(
        label: Text('2'),
        child: Icon(Icons.description_outlined),
      ),
      label: 'Orders',
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.settings_outlined), label: "Settings")
  ];

  List<PreferredSizeWidget?> appBars = [
    // GradientAppBar(),
    null,
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
    appBars = [
      // GradientAppBar(),
      null,
      null,
      null,
      null
    ];

    screenList = [
      HomeBaseScreen(cntx: context),
      const Placeholder(),
      const Center(child: Text("Index 2")),
      const Center(child: Text("Index ke 3"))
    ];

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

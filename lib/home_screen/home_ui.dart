import 'package:flutter/material.dart';
import 'package:gaboot_mobile/auth/auth_dto.dart';
import 'package:gaboot_mobile/auth/auth_service.dart';
import 'package:gaboot_mobile/category/category_model.dart';
import 'package:gaboot_mobile/category/category_screen.dart';
import 'package:gaboot_mobile/category/category_service.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/product/product_service.dart';
import 'package:gaboot_mobile/testscreen/testscreen.dart';
import 'package:gaboot_mobile/ui_collection/gradien_appbar.dart';
import 'package:gaboot_mobile/ui_collection/gradien_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  List<Widget> screenList = const [
    Center(child: Text("Index 0"),),
    Center(child: Text("Index 1"),),
    // Center(child: Text("Index 2"),),
    TestScreen()
  ];

  List<PreferredSizeWidget?> appBars = const [
    GradientAppBar(),
    null,
    null
  ];

  void testProduct() async {
    final resp = await ProductService().getProducts();
    if (resp.data != null) {
      for (Product elm in resp.data!) {
        print(elm.toJson());
      }
    }
  }

  void testCategory() async {
    final resp = await CategoryService().getCategories();
    if (resp.data != null) {
      for (Category elm in resp.data!) {
        print(elm.toJson());
      }
    }
  }

  void navigate() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext cntx) => CategoryScreen(cntx: cntx)));
  }

  Future<void> testLogin() async {
    final dataParam = AuthDTO(password: '123', username: 'elaina023');
    final response = await CustomerService().login(dataParam);
    print(response.toString());
  }

  Future<void> testPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? data = prefs.getString("jwt");
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const GradientAppBar(),
      appBar: appBars[currentPageIndex],
      bottomNavigationBar: botNav(),
      body: screenList[currentPageIndex],
    );
  }

  Widget testing() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Home Screen',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GradBtn(
              cbFunc: testPref,
              text: "Get Storage",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GradBtn(
              cbFunc: testLogin,
              text: "Login",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GradBtn(
              cbFunc: navigate,
              text: "Navigate",
            ),
          ),
          ElevatedButton(onPressed: testPref, child: const Text("Test"))
        ],
      ),
    );
  }

  Widget botNav() {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: Colors.amber,
      selectedIndex: currentPageIndex,
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Badge(child: Icon(Icons.notifications_sharp)),
          label: 'Notifications',
        ),
        NavigationDestination(
          icon: Badge(
            label: Text('2'),
            child: Icon(Icons.messenger_sharp),
          ),
          label: 'Messages',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gaboot_mobile/category/category_model.dart';
import 'package:gaboot_mobile/category/category_screen.dart';
import 'package:gaboot_mobile/category/category_service.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/product/product_service.dart';
import 'package:gaboot_mobile/ui_collection/gradien_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
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
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext cntx) => CategoryScreen(cntx: cntx)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Gaboot",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Home Screen',
            ),
            GradBtn(cbFunc: navigate, text: "Navigate",)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gaboot_mobile/product/product_model.dart';
import 'package:gaboot_mobile/product/product_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void getData() async {
    final respz = await ProductService().getProducts();
    if (respz.data != null) {
      for (Product elm in respz.data!) {
        print(elm.toJson());
      }
    }
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
            TextButton(onPressed: getData, child: const Text("Test"))
          ],
        ),
      ),
    );
  }
}

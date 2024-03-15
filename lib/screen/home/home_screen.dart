import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';
import 'package:gaboot_mobile/ui_collection/form/text_form.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColSys().primary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 20),
                  child: Icon(Icons.search, size: 46),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                hintText: 'Enter a search term',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

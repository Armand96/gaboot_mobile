import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8, 100, 8, 8),
            child: Button(btnColor: "primary", enabled: true, fullWidth: false, text: "Tombol", isOutline: true,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Button(btnColor: "primary", enabled: true, fullWidth: false, text: "Tombol", isOutline: false,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Button(btnColor: "primary", enabled: true, fullWidth: true, text: "Tombol", isOutline: false,),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Button(btnColor: "primary", enabled: true, fullWidth: true, text: "Tombol", isOutline: true,),
          ),
        ],
      ),
    );
  }
}
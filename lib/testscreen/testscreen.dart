import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';
import 'package:gaboot_mobile/ui_collection/button/google_button.dart';
import 'package:gaboot_mobile/ui_collection/form/search_form.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  void test(){
    print("clicked");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: const Column(
        // children: [
        //   Padding(
        //     padding: const EdgeInsets.fromLTRB(8, 100, 8, 8),
        //     child: Button(btnColor: "primary", enabled: true, fullWidth: false, text: "Tombol", isOutline: true, funcs: test,),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        //     child: Button(btnColor: "primary", enabled: true, fullWidth: false, text: "Tombol", isOutline: false, funcs: test,),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        //     child: Button(btnColor: "primary", enabled: true, fullWidth: true, text: "Tombol", isOutline: false, funcs: test,),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        //     child: Button(btnColor: "primary", enabled: true, fullWidth: true, text: "Tombol", isOutline: true, funcs: test),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        //     child: GButton(fullWidth: true, funcs: test, text: "Masuk dengan akun Google Anda", )
        //   ),
        // ],
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.0, left: 10, right: 10),
            child: SearchForm(),
          )
        ],
      ),
    );
  }
}
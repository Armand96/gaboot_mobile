import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';
import 'package:gaboot_mobile/ui_collection/button/google_button.dart';
import 'package:gaboot_mobile/ui_collection/comp/card.dart';
import 'package:gaboot_mobile/ui_collection/form/search_form.dart';
import 'package:gaboot_mobile/ui_collection/loading/linear_loading.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with TickerProviderStateMixin {
  late AnimationController ctrler;

  @override
  void initState() {
    ctrler = AnimationController(
      vsync: this,
      // duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    // ctrler.repeat(reverse: false);
    super.initState();
  }

  void test() {
    // print("clicked");
    ctrler.value += .02;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
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
          const Padding(
            padding: EdgeInsets.only(top: 50.0, left: 10, right: 10),
            child: SearchForm(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: LinearLoading(ctrl: ctrler),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Button(
                btnColor: "danger",
                enabled: true,
                fullWidth: false,
                text: "Test Loading",
                isOutline: false,
                funcs: test),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: CardProduct(),
          )
        ],
      ),
    );
  }
}

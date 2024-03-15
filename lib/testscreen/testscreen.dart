import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';
import 'package:gaboot_mobile/ui_collection/button/google_button.dart';
import 'package:gaboot_mobile/ui_collection/comp/card_product.dart';
import 'package:gaboot_mobile/ui_collection/form/search_form.dart';
import 'package:gaboot_mobile/ui_collection/form/text_form.dart';
import 'package:gaboot_mobile/ui_collection/loading/linear_loading.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with TickerProviderStateMixin {
  late AnimationController ctrler;
  final txtCtrl = TextEditingController();

  @override
  void initState() {
    ctrler = AnimationController(
      vsync: this,
      // duration: const Duration(seconds: 1),
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

  void navigate() {
    Navigator.pushNamed(context, '/login');
  }

  void goHome() {
    Navigator.pushNamed(context, '/gohome');
  }

  @override
  Widget build(BuildContext context) {
    // return CustomScrollView(
    //   slivers: [
    //     SliverGrid.builder(
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 2,
    //         mainAxisSpacing: 10.0,
    //         crossAxisSpacing: 10.0,
    //         childAspectRatio: 1.0,
    //       ),
    //       itemBuilder: (BuildContext context, int index) {
    //         return const Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 5),
    //           child: CardProduct(
    //             title: "Laptop",
    //             price: 10000000,
    //             rating: 2,
    //           ),
    //         );
    //       },
    //       itemCount: 10, // Specify the number of items in the grid
    //     ),
    //   ],
    // );
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
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: InputForm(
              isFormField: false,
              hintText: "Masukkan username",
              iconPrefix: const Icon(Icons.access_alarm),
              txtCtrl: txtCtrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Button(
              enabled: true,
              fullWidth: false,
              isOutline: false,
              text: "Test Screen",
              funcs: navigate,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Button(
              enabled: true,
              fullWidth: false,
              isOutline: false,
              text: "Test Home",
              funcs: goHome,
            ),
          ),
        ],
      ),
    );
  }

  Widget another() {
    return Container(
        alignment: Alignment.topCenter,
        child: SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            mainAxisSpacing: 10.0, // Spacing between rows
            crossAxisSpacing: 10.0, // Spacing between columns
            childAspectRatio: 1.0, // Width to height ratio of each grid item
          ),
          itemBuilder: (BuildContext ctx, int indx) {
            return const Padding(
              padding: EdgeInsets.all(8),
              // child: CardProduct(productTitle: "LAPTOP"),
            );
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';
import 'package:gaboot_mobile/ui_collection/button/google_button.dart';
import 'package:gaboot_mobile/ui_collection/form/text_form.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  bool rememberMe = false;
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void onChangeTick(bool? value) {
    setState(() {
      rememberMe = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 80.0),
            child: Text("Selamat Datang",
                style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 80.0, left: 20),
            child: Text("Masuk ke akun Anda",
                style: TextStyle(fontSize: 24), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
            child: InputForm(
                hintText: "username", isFormField: true, txtCtrl: txtUsername),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
            child: InputForm(
              hintText: "password",
              isFormField: true,
              txtCtrl: txtPassword,
              obscureText: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 25, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: onChangeTick,
                    ),
                    const Text("Ingat saya")
                  ],
                ),
                const Text("Lupa kata sandi?"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              width: 200,
              child: Button(
                  enabled: true,
                  fullWidth: true,
                  text: "Masuk",
                  isOutline: false,
                  funcs: () {}),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text("ATAU"),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GButton(
                fullWidth: true,
                funcs: () {},
                text: "Masuk dengan akun Googel Anda",
              )),
        ],
      ),
    );
  }

  Widget abstractText() {
    const String textStr =
        "Beli Maupun Jual \n Kelengkapan Komputer Lebih \n Lengkap Dengan Aplikasi \n Gaboot";
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 15),
      child: Text(textStr,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
    );
  }
}

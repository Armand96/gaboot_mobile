import 'package:flutter/material.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';
import 'package:gaboot_mobile/ui_collection/form/text_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtNamaLengkap = TextEditingController();
  TextEditingController txtAlamatEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0, left: 15),
            child: Text(
              "Buat Akun",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: InputForm(
                hintText: "Nama Lengkap",
                isFormField: false,
                txtCtrl: txtNamaLengkap),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: InputForm(
                hintText: "Alamat Email",
                isFormField: false,
                txtCtrl: txtAlamatEmail),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: InputForm(
              hintText: "Password",
              isFormField: false,
              txtCtrl: txtPassword,
              obscureText: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Button(
                enabled: true,
                fullWidth: true,
                text: "Daftar",
                isOutline: false,
                funcs: () {}),
          ),
        ],
      ),
    );
  }
}

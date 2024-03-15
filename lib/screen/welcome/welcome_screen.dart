import 'package:flutter/material.dart';
import 'package:gaboot_mobile/screen/login/login_screen.dart';
import 'package:gaboot_mobile/screen/signup/signup_screen.dart';
import 'package:gaboot_mobile/ui_collection/button/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            image(),
            abstractText(),
            btnMasuk(context),
            btnDaftar(context),
          ],
        ),
      ),
    );
  }

  // ==============================================================
  void navigateToLogin(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  void navigateToDaftar(BuildContext ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (context) => const SignUpScreen()),
    );
  }
  // ==============================================================

  Widget btnDaftar(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Button(
          enabled: true,
          fullWidth: true,
          text: "Daftar",
          isOutline: true,
          funcs: () {
            navigateToDaftar(ctx);
          }),
    );
  }

  Widget btnMasuk(BuildContext ctx) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: Button(
          enabled: true,
          fullWidth: true,
          text: "Masuk",
          isOutline: false,
          funcs: () {
            navigateToLogin(ctx);
          }),
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

  Widget image() {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 400,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('asset/images/noimage.png'),
          // image: NetworkImage(Config().baseUrlImage + categoryModel.link),
        ),
      ),
    );
  }
}

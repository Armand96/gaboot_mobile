import 'package:flutter/material.dart';
import 'package:gaboot_mobile/home_screen/home_ui.dart';
import 'package:gaboot_mobile/screen/login/login_screen1.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen1());
      // Add more cases for additional routes
      default:
        return null; // Handle unknown routes here if needed
    }
  }
}
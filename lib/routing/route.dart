import 'package:flutter/material.dart';
// import 'package:gaboot_mobile/home_screen/home_ui.dart';
import 'package:gaboot_mobile/screen/home/home_screen.dart';
import 'package:gaboot_mobile/screen/welcome/welcome_screen.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MainScreen());
        // return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case '/gohome':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      // Add more cases for additional routes
      default:
        return null; // Handle unknown routes here if needed
    }
  }
}

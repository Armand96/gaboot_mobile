import 'package:flutter/material.dart';
import 'package:gaboot_mobile/home_screen/home_ui.dart';

class AppRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      // Add more cases for additional routes
      default:
        return null; // Handle unknown routes here if needed
    }
  }
}
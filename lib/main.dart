import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gaboot_mobile/routing/route.dart';
import 'package:gaboot_mobile/ui_collection/color_system.dart';

void main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Routing Example',
      initialRoute: '/',
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }

  ThemeData theme() {
    return ThemeData(
      // Define your app's theme here
      primaryColor: ColSys().primary,
      fontFamily: 'Roboto', // Set the default font family
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 16.0),
      ),
    );
  }
}

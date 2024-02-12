import 'package:flutter/material.dart';
import 'package:gaboot_mobile/routing/route.dart';

void main() {
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
      primaryColor: Colors.blue,
      fontFamily: 'Roboto', // Set the default font family
      textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 16.0),
      ),
    );
  }
}

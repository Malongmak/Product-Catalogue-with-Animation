import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme.dart';
import 'splash_screen.dart'; // Import splash screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Store',
      theme: AppTheme.lightTheme, // Default theme
      home: const SplashScreen(), // Set the home to the splash screen
    );
  }
}

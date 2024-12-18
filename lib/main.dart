import 'package:flutter/material.dart';
import 'package:tasca2/screens/home_page.dart';
import 'package:tasca2/styles/app_styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppStyles.generalTheme,
      home: const HomePage(),
    );
  }
}

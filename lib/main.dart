import 'package:flutter/material.dart';
import 'package:habit_tracker/config/app_routes.dart';
import 'package:habit_tracker/styles/app_colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.habitsList,
      routes: AppRoutes.pages,
    );
  }
}

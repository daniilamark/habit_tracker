import 'package:flutter/material.dart';
import 'package:habit_tracker/config/app_strings.dart';
import 'package:habit_tracker/styles/app_text.dart';

class Habit extends StatelessWidget {
  const Habit({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        AppStrings.update,
        style: AppText.header1,
      )),
    );
  }
}

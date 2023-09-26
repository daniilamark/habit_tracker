import 'package:habit_tracker/pages/habit.dart';
import 'package:habit_tracker/pages/habits_list.dart';

class AppRoutes {
  static final pages = {
    habitsList: (context) => const HabitsList(),
    habit: (context) => const Habit(),
  };

  static const habitsList = '/';
  static const habit = '/habit';
}

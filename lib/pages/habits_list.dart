import 'package:flutter/material.dart';
import 'package:habit_tracker/config/app_routes.dart';
import 'package:habit_tracker/config/app_strings.dart';
import 'package:habit_tracker/styles/app_text.dart';

class HabitsList extends StatelessWidget {
  const HabitsList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _TabBarExampleState extends State<TabBarExample>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: AppStrings.goodHabits,
              //icon: Icon(Icons.cloud_outlined),
            ),
            Tab(
              text: AppStrings.badHabits,
              //icon: Icon(Icons.beach_access_sharp),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text(
              "Текст ХОРОШИЕ",
              style: AppText.header1,
            ),
          ),
          Center(
            child: Text(
              "Текст ПЛОХИЕ",
              style: AppText.header1,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.habit);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

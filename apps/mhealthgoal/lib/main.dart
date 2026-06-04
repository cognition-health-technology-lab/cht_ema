import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/app/app.dart';
import 'package:mhealthgoal/src/app/startup/app_initializer.dart';

Future<void> main() async {
  final appInitializer = AppInitializer();
  final appDeps = await appInitializer.init();

  runApp(MHealthGoalApp(appDependencies: appDeps));
}

import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/app/app.dart';
import 'package:mhealthgoal/src/app/startup/app_initializer.dart';
import 'package:mhealthgoal/src/core/router/router.dart';

Future<void> main() async {
  final appInitializer = AppInitializer();
  appInitializer.initFlutter();
  await appInitializer.initFirebase();
  await appInitializer.initNotificationsService();
  await appInitializer.initPedometerService();
  runApp(MHealthGoalApp(appRouter: AppRouter()));
}

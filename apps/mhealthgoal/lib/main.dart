import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/app/app.dart';
import 'package:mhealthgoal/src/app/startup/app_initializer.dart';
import 'package:mhealthgoal/src/core/physical_activity/pedometer/pedometer_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appInitializer = AppInitializer(pedometerService: PedometerService());
  await appInitializer.initPedometerService();
  runApp(const MHealthGoalApp());
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mhealthgoal/firebase_options.dart';
import 'package:mhealthgoal/src/core/notifications/domain/services/app_notification_service.dart';
import 'package:mhealthgoal/src/core/physical_activity/pedometer/pedometer_service.dart';

class AppInitializer {
  late final AppNotificationService _notificationService;
  late final PedometerService _pedometerService;

  void initFlutter() {
    WidgetsFlutterBinding.ensureInitialized();
  }

  Future<void> initPedometerService() async {
    _pedometerService = PedometerService();
    await _pedometerService.askPermission();
    if (_pedometerService.permissionGranted) {
      await _pedometerService.initStepCount();
      await _pedometerService.initPedestrianStatus();
    }
  }

  Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<void> initNotificationsService() async {
    // TODO(mario-bermonti): don't run setup on each launch
    _notificationService = AppNotificationService();
    await _notificationService.setup();
    await _notificationService.init();
  }
}

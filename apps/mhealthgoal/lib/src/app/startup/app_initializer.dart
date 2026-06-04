import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mhealthgoal/firebase_options.dart';
import 'package:mhealthgoal/src/app/app_deps.dart';
import 'package:mhealthgoal/src/core/notifications/domain/navigation_handler.dart';
import 'package:mhealthgoal/src/core/notifications/domain/services/app_notification_service.dart';
import 'package:mhealthgoal/src/core/physical_activity/pedometer/pedometer_service.dart';
import 'package:mhealthgoal/src/core/router/data/app_router.dart';
import 'package:mhealthgoal/src/core/router/domain/navigation_intent_service.dart';

class AppInitializer {
  Future<AppDependencies> init() async {
    _initFlutter();
    await _initFirebase();
    final navigationIntentService = _initNavigationService();
    final appRouter = _initAppRouter(
      navigationIntentService: navigationIntentService,
    );
    final notificationService = await _initNotificationsService(
      navigationHandler: navigationIntentService.requestEmaNavigationIntent,
    );
    final pedometerService = await _initPedometerService();

    return AppDependencies(
      notificationService: notificationService,
      pedometerService: pedometerService,
      navigationIntentService: navigationIntentService,
      appRouter: appRouter,
    );
  }

  void _initFlutter() {
    WidgetsFlutterBinding.ensureInitialized();
  }

  Future<void> _initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  Future<AppNotificationService> _initNotificationsService({
    required NavigationHandler navigationHandler,
  }) async {
    final notificationService = AppNotificationService(
      navigationHandler: navigationHandler,
    );
    await notificationService.setup();
    await notificationService.init();
    return notificationService;
  }

  Future<PedometerService> _initPedometerService() async {
    final pedometerService = PedometerService();
    await pedometerService.askPermission();
    if (pedometerService.permissionGranted) {
      await pedometerService.initStepCount();
      await pedometerService.initPedestrianStatus();
    }

    return pedometerService;
  }

  NavigationIntentService _initNavigationService() {
    return NavigationIntentService();
  }

  AppRouter _initAppRouter({
    required NavigationIntentService navigationIntentService,
  }) {
    return AppRouter(navigationIntentService: navigationIntentService);
  }
}

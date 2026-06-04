import 'package:mhealthgoal/src/core/notifications/domain/services/app_notification_service.dart';
import 'package:mhealthgoal/src/core/physical_activity/pedometer/pedometer_service.dart';
import 'package:mhealthgoal/src/core/router/data/app_router.dart';
import 'package:mhealthgoal/src/core/router/domain/navigation_intent_service.dart';

class AppDependencies {
  final AppNotificationService notificationService;
  final PedometerService pedometerService;
  final NavigationIntentService navigationIntentService;
  final AppRouter appRouter;

  AppDependencies({
    required this.notificationService,
    required this.pedometerService,
    required this.navigationIntentService,
    required this.appRouter,
  });
}

import 'package:mhealthgoal/src/core/physical_activity/pedometer/pedometer_service.dart';

class AppInitializer {
  final PedometerService _pedometerService;

  AppInitializer({required PedometerService pedometerService})
    : _pedometerService = pedometerService;

  Future<void> initPedometerService() async {
    await _pedometerService.askPermission();
    if (_pedometerService.permissionGranted) {
      await _pedometerService.initStepCount();
      await _pedometerService.initPedestrianStatus();
    }
  }
}

import 'dart:async';
import 'dart:io' show Platform;

import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

/// A service that manages the pedometer functionality, including permission,
/// handling and initializing the pedometer streams.
class PedometerService {
  bool permissionGranted = false;

  StreamSubscription<StepCount>? _stepCountSubscription;
  StreamSubscription<PedestrianStatus>? _pedestrianStatusSubscription;

  Future<void> init() async {
    await _askPermission();
    if (permissionGranted) {
      _initStepCount();
      _initPedestrianStatus();
    }
  }

  /// Asks the user for permission to access activity recognition on Android,
  /// if it has not been granted. It has no effect on iOS because it is
  /// handled automatically by ios.
  /// It must be called before the pedometer can be used on Android.
  Future<void> _askPermission() async {
    if (Platform.isIOS) {
      permissionGranted = true;
    } else if (Platform.isAndroid) {
      permissionGranted = await Permission.activityRecognition
          .request()
          .isGranted;
    }
  }

  void _initStepCount() {
    _stepCountSubscription = Pedometer.stepCountStream.listen(
      (event) {
        // ignore: avoid_print
        print('Steps: ${event.timeStamp} - ${event.steps}');
      },
      onError: (Object error, StackTrace stackTrace) {
        // ignore: avoid_print
        print('Steps Error: $error, $stackTrace');
      },
      onDone: () {
        // ignore: avoid_print
        print('Steps: Done!');
      },
    );
  }

  void _initPedestrianStatus() {
    _pedestrianStatusSubscription = Pedometer.pedestrianStatusStream.listen(
      (event) {
        // ignore: avoid_print
        print('Pedestrian: ${event.timeStamp} - ${event.status}');
      },
      onError: (Object error, StackTrace stackTrace) {
        // ignore: avoid_print
        print('Pedestrian Error: $error, $stackTrace');
      },
      onDone: () {
        // ignore: avoid_print
        print('Pedestrian: Done!');
      },
    );
  }

  Future<void> dispose() async {
    await _stepCountSubscription?.cancel();
    await _pedestrianStatusSubscription?.cancel();
  }
}

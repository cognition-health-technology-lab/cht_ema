import 'dart:io' show Platform;

import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

class PedometerService {
  final Pedometer _pedometer;
  bool permissionGranted = false;

  PedometerService({required Pedometer pedometer}) : _pedometer = pedometer;

  /// Asks the user for permission to access activity recognition on Android,
  /// if it has not been granted. It has no effect on iOS because it is
  /// handled automatically by ios.
  Future<void> askPermission() async {
    if (Platform.isIOS) {
      permissionGranted = true;
    } else if (Platform.isAndroid) {
      permissionGranted = await Permission.activityRecognition
          .request()
          .isGranted;
    }
  }
}

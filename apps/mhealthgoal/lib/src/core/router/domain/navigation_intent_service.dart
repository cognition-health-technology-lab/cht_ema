import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/core/router/domain/navigation_intent.dart';

class NavigationIntentService extends ChangeNotifier {
  NavigationIntent? _pendingIntent;

  NavigationIntent? get pendingIntent => _pendingIntent;

  void requestEmaNavigationIntent() {
    _pendingIntent = const NavigationIntent.ema();
    notifyListeners();
  }

  void clearPendingNavigationIntent() {
    _pendingIntent = null;
  }
}

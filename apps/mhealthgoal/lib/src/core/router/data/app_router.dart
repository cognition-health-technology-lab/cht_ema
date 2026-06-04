import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mhealthgoal/src/core/router/domain/navigation_intent.dart';
import 'package:mhealthgoal/src/core/router/domain/navigation_intent_service.dart';
import 'package:mhealthgoal/src/ema_session/presentation/ema_session_page.dart';
import 'package:mhealthgoal/src/features/home/presentation/home_page.dart';

/// Domain-level interface to the app's router.
///
/// The app should only depend on this class instead of external
/// routing dependencies.
class AppRouter {
  late final GoRouter router;
  final NavigationIntentService _navigationIntentService;
  List<GoRoute> get routes => List.unmodifiable(_routes);

  AppRouter({required NavigationIntentService navigationIntentService})
    : _navigationIntentService = navigationIntentService {
    router = GoRouter(
      routes: _routes,
      initialLocation: '/',
      redirect: _redirect,
      refreshListenable: _navigationIntentService,
    );
  }

  void navigateToHome(BuildContext context) => context.go('/');

  FutureOr<String?> _redirect(BuildContext context, GoRouterState state) {
    if (_navigationIntentService.pendingIntent is EmaNavigationIntent) {
      _navigationIntentService.clearPendingNavigationIntent();
      return '/emaSessionPage';
    }
    return null;
  }
}

final _routes = <GoRoute>[
  GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    name: 'emaSessionPage',
    path: '/emaSessionPage',
    builder: (context, state) => EmaSessionPage(),
  ),
];

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mhealthgoal/src/features/home/presentation/home_page.dart';

/// Domain-level interface to the app's router.
///
/// The app should only depend on this class instead of external
/// routing dependencies.
class AppRouter {
  final router = GoRouter(routes: _routes, initialLocation: '/');
  final routes = _routes;

  void navigateToHome(BuildContext context) => context.go('/');
}

final _routes = <GoRoute>[
  GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
];

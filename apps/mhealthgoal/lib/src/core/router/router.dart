import 'package:go_router/go_router.dart';
import 'package:mhealthgoal/src/features/home/presentation/home_page.dart';

class AppRouter {
  final router = GoRouter(routes: _routes, initialLocation: '/');
  final routes = _routes;
}

final _routes = <GoRoute>[
  GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
];

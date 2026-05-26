import 'package:go_router/go_router.dart';
import 'package:mhealthgoal/src/features/home/presentation/home_page.dart';

final routes = <GoRoute>[
  GoRoute(
    name: 'home',
    path: '/',
    builder: (context, state) => const HomePage(),
  ),
];

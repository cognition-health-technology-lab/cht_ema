import 'package:go_router/go_router.dart';
import 'package:mhealthgoal/src/features/home/presentation/home_page.dart';

final routes = <GoRoute>[
  GoRoute(path: '/', builder: (context, state) => const HomePage()),
];

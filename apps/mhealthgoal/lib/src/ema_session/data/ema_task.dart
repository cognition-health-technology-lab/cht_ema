import 'package:mhealthgoal/src/ema_session/data/ema_task_definitions.dart';

class EmaTask {
  final String identifier;
  final String description;
  final EmaTaskBuilder build;

  EmaTask({
    required this.identifier,
    required this.description,
    required this.build,
  });
}

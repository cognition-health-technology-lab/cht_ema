import 'package:cht_ema_cognitive_tasks/cht_ema_cognitive_tasks.dart';
import 'package:flutter/material.dart';

export 'package:cht_ema_cognitive_tasks/src/core/l10n/cht_ema_cognitive_tasks_localization.dart';
export 'package:cht_ema_cognitive_tasks/src/core/l10n/cht_rp_localization_loader.dart';

class CognitiveTasksPage extends StatelessWidget {
  const CognitiveTasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = ChtEmaCognitiveTasksLocalization.of(context);
    return Scaffold(body: Center(child: Text(localizations.placeholderText)));
  }
}

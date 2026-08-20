import 'package:cht_ema_surveys/src/chronic_health/presentation/chronic_health_view_model.dart';
import 'package:flutter/material.dart';
import 'package:research_package/ui.dart';

class ChronicHealthPage extends StatelessWidget {
  final _viewModel = ChronicHealthViewModel();

  ChronicHealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: _viewModel.task);
  }
}

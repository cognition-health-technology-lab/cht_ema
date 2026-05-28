import 'package:example_surveys/src/erq_ema/presentation/view_model/erq_ema_survey_view_model.dart';
import 'package:flutter/material.dart';
import 'package:research_package/ui.dart';

class ErqEmaSurveyPage extends StatelessWidget {
  final _viewModel = ErqEmaSurveyViewModel();
  ErqEmaSurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: _viewModel.task);
  }
}

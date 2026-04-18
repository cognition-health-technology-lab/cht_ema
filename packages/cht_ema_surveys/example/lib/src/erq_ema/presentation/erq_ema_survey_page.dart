import 'package:example_surveys/src/erq_ema/data/erq_ema_survey_questions.dart';
import 'package:flutter/material.dart';
import 'package:research_package/model.dart';
import 'package:research_package/ui.dart';

class ErqEmaSurveyPageAlt extends StatelessWidget {
  final void Function(BuildContext context, RPTaskResult result) onFinish;

  const ErqEmaSurveyPageAlt({required this.onFinish, super.key});

  @override
  Widget build(BuildContext context) {
    final task = buildErqEmaSurveyTask(
      context,
      variant: ErqEmaUiVariant.sliderWithLegend,
    );

    final customTheme = Theme.of(context).copyWith(
      textTheme: Theme.of(context).textTheme.copyWith(
        bodySmall: Theme.of(
          context,
        ).textTheme.bodySmall?.copyWith(fontSize: 25),
      ),
    );

    return Theme(
      data: customTheme,
      child: RPUITask(
        task: task,
        onSubmit: (RPTaskResult result) => onFinish(context, result),
        onCancel: (RPTaskResult? _) => Navigator.of(context).pop(),
      ),
    );
  }
}

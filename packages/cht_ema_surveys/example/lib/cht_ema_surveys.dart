import 'package:flutter/material.dart';
import 'package:research_package/model.dart';
import 'package:research_package/ui.dart';
export 'package:example_surveys/src/core/l10n/cht_rp_localization_loader.dart';
export 'package:example_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
export 'package:example_surveys/src/erq_ema/presentation/erq_ema_page.dart';

class SurveyPage extends StatelessWidget {
  SurveyPage({super.key});

  final RPOrderedTask task = RPOrderedTask(
    identifier: 'surveyId',
    steps: [
      RPQuestionStep(
        identifier: 'itemId',
        title: 'itemTitle',
        answerFormat: RPIntegerAnswerFormat(minValue: 0, maxValue: 10),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: task);
  }
}

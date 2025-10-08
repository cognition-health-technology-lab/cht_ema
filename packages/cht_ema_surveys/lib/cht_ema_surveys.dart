import 'package:flutter/material.dart';
import 'package:research_package/model.dart';
import 'package:research_package/ui.dart';

export 'package:cht_ema_surveys/src/core/l10n/cht_ema_surveys_localization.dart';
export 'package:cht_ema_surveys/src/core/l10n/cht_rp_localization_loader.dart';

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

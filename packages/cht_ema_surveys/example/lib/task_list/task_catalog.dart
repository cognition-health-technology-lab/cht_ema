import 'package:cht_cognition/cht_cognition.dart' as cognition;
import 'package:cht_ema_surveys/cht_ema_surveys.dart' as surveys;
import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:example_surveys/task_list/task_list_page.dart';
import 'package:flutter/material.dart';

List<TaskListItem> buildTaskCatalog(AppLocalizations localizations) {
  return <TaskListItem>[
    TaskListItem(
      id: 'goNoGo',
      title: localizations.goNoGoTaskTitle,
      scope: localizations.taskScopeCognition,
      description: localizations.goNoGoTaskDescription,
      icon: Icons.touch_app_outlined,
      destinationBuilder: (BuildContext context) => cognition.GoNoGoTask(
        processData: _printCognitiveData,
        participantId: 'p1',
        sessionId: 's1',
        nTrials: 20,
        goProbability: .75,
        trialTimeoutDuration: const Duration(milliseconds: 750),
        restEveryNTrials: 10,
      ),
    ),
    TaskListItem(
      id: 'survey',
      title: localizations.surveyTaskTitle,
      scope: localizations.taskScopeSurvey,
      description: localizations.surveyTaskDescription,
      icon: Icons.mood_outlined,
      destinationBuilder: (BuildContext context) => surveys.SurveyPage(),
    ),
  ];
}

void _printCognitiveData(cognition.CognitiveData data) {
  debugPrint(data.toString());
}

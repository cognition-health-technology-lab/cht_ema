import 'package:cht_cognition/src/core/cognitive_task.dart';
import 'package:cht_cognition/src/core/data/process_data_callback.dart';
import 'package:cht_cognition/src/core/trials/on_trial_callback_definition.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_stim.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_trial_page.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_trials_builder.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_view_model.dart';
import 'package:flutter/material.dart';

class GoNoGoTask extends CognitiveTask<Trial<GoNoGoStim>> {
  GoNoGoTask({
    required String participantId,
    required String sessionId,
    super.instructionsPageBuilder,
    super.restPageBuilder,
    super.finishedPageBuilder,
    super.navigateAfterTask,
    super.key,
    int nTrials = 10,
    double goProbability = 0.7,
    Duration trialTimeoutDuration = const Duration(milliseconds: 1000),
    Duration itiDuration = const Duration(milliseconds: 750),
    int restEveryNTrials = 1000,
    ProcessCognitiveDataCallback? processData,
  }) : super(
         viewModel: GoNoGoViewModel(
           participantId: participantId,
           sessionId: sessionId,
           processData: processData,
           trials: buildGoNoGoTrials(n: nTrials, goProbability: goProbability),
           trialTimeoutDuration: trialTimeoutDuration,
           itiDuration: itiDuration,
           restEveryNTrials: restEveryNTrials,
         ),
       );

  @override
  Widget buildTrialPage({
    required BuildContext context,
    required Trial<GoNoGoStim> trial,
    required OnTrialCallback onFinished,
  }) {
    return GoNoGoTrialPage(
      trial: trial,
      onFinished: onFinished,
    );
  }
}

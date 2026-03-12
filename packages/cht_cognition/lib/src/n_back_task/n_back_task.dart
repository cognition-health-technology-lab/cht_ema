import 'package:cht_cognition/src/core/cognitive_task.dart';
import 'package:cht_cognition/src/core/data/process_data_callback.dart';
import 'package:cht_cognition/src/core/trials/on_trial_callback_definition.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/n_back_task/n_back_stim.dart';
import 'package:cht_cognition/src/n_back_task/n_back_task_trials_builder.dart';
import 'package:cht_cognition/src/n_back_task/n_back_task_view_model.dart';
import 'package:cht_cognition/src/n_back_task/n_back_trial_page.dart';
import 'package:flutter/material.dart';

class NBackTask extends CognitiveTask<Trial<NBackStim>> {
  NBackTask({
    required String participantId,
    required String sessionId,
    super.instructionsPageBuilder,
    super.restPageBuilder,
    super.finishedPageBuilder,
    super.navigateAfterTask,
    super.key,
    int nTrials = 10,
    double matchProbability = 0.3,
    Duration trialTimeoutDuration = const Duration(milliseconds: 1000),
    Duration itiDuration = const Duration(milliseconds: 750),
    int? restEveryNTrials,
    ProcessCognitiveDataCallback? processData,
  }) : super(
         viewModel: NBackTaskViewModel(
           participantId: participantId,
           sessionId: sessionId,
           processData: processData,
           trials: buildNBackTrials(
             n: nTrials,
             matchProbability: matchProbability,
           ),
           trialTimeoutDuration: trialTimeoutDuration,
           itiDuration: itiDuration,
           restEveryNTrials: restEveryNTrials,
         ),
       );

  @override
  Widget buildTrialPage({
    required BuildContext context,
    required Trial<NBackStim> trial,
    required OnTrialCallback onFinished,
  }) {
    return const NBackTaskTrialPage();
  }
}

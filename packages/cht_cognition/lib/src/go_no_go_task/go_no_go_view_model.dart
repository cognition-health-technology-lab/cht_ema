import 'package:cht_cognition/src/core/data/data_manager.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/core/trials/trial_manager.dart';
import 'package:cht_cognition/src/core/view_model.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_stim.dart';

class GoNoGoViewModel extends ViewModel<Trial<GoNoGoStim>> {
  GoNoGoViewModel({
    required String participantId,
    required String sessionId,
    required List<Trial<GoNoGoStim>> trials,
    required super.itiDuration,
    required super.restEveryNTrials,
    super.processData,
    super.trialTimeoutDuration,
  }) : super(
         trialManager: TrialManager<Trial<GoNoGoStim>>(
           trials: trials,
         ),
         dataManager: DataManager(
           participantId: participantId,
           sessionId: sessionId,
         ),
       );
}

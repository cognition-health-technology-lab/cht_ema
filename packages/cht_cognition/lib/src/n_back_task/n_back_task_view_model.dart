import 'package:cht_cognition/src/core/data/data_manager.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/core/trials/trial_manager.dart';
import 'package:cht_cognition/src/core/view_model.dart';
import 'package:cht_cognition/src/n_back_task/n_back_stim.dart';

class NBackTaskViewModel extends ViewModel<Trial<NBackStim>> {
  NBackTaskViewModel({
    required String participantId,
    required String sessionId,
    required List<Trial<NBackStim>> trials,
    required super.itiDuration,
    required super.restEveryNTrials,
    super.processData,
    super.trialTimeoutDuration,
  }) : super(
         trialManager: TrialManager<Trial<NBackStim>>(trials: trials),
         dataManager: DataManager(
           participantId: participantId,
           sessionId: sessionId,
         ),
       );
}

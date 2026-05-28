import 'package:cht_cognition/src/core/trials/randomization_type.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/core/trials/trial_randomizer.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_stim.dart';

List<Trial<GoNoGoStim>> buildGoNoGoTrials({
  required int n,
  required double goProbability,
  RandomizationType randomizationType = RandomizationType.full,
  int? seed,
}) {
  if (n < 1) {
    throw ArgumentError('n must be greater than 0');
  }
  if (goProbability < 0.0 || goProbability > 1.0) {
    throw ArgumentError('goProbability must be between 0.0 and 1.0');
  }

  final trials = <Trial<GoNoGoStim>>[];

  final goCount = (n * goProbability).floor();
  final goTrials = _buildNTrials(
    trialCount: goCount,
    stim: GoNoGoStim.go,
  );
  trials.addAll(goTrials);

  final noGoCount = n - goCount;
  final noGoTrials = _buildNTrials(
    trialCount: noGoCount,
    stim: GoNoGoStim.noGo,
  );
  trials.addAll(noGoTrials);

  return TrialRandomizer.randomize(
    trials: trials,
    randomizationType: randomizationType,
    seed: seed,
  );
}

List<Trial<GoNoGoStim>> _buildNTrials({
  required int trialCount,
  required GoNoGoStim stim,
}) {
  final trials = <Trial<GoNoGoStim>>[];
  for (var i = 1; i <= trialCount; i++) {
    trials.add(
      Trial<GoNoGoStim>(
        stim: stim,
      ),
    );
  }
  return trials;
}

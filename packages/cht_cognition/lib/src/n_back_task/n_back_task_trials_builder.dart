import 'dart:math';

import 'package:cht_cognition/src/core/trials/randomization_type.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/core/trials/trial_randomizer.dart';
import 'package:cht_cognition/src/n_back_task/n_back_stim.dart';

List<Trial<NBackStim>> buildNBackTrials({
  required int n,
  required double matchProportion,
  RandomizationType randomizationType = RandomizationType.full,
  int? seed,
}) {
  if (n < 1) {
    throw ArgumentError('n must be greater than 0');
  }
  if (matchProportion < 0.0 || matchProportion > 1.0) {
    throw ArgumentError('matchProportion must be between 0.0 and 1.0');
  }

  final matchCount = n * matchProportion.floor();
  final nonMatchCount = n - matchCount;

  final trials = <Trial<NBackStim>>[];
  trials.addAll(buildMatchingTrials(trialCount: matchCount));
  trials.addAll(buildNonMatchingTrials(trialCount: nonMatchCount));

  return TrialRandomizer.randomize(
    trials: trials,
    randomizationType: randomizationType,
    seed: seed,
  );
}

List<Trial<NBackStim>> buildMatchingTrials({required int trialCount}) {
  const stimA = NBackStim(
    currentStim: NBackStimType.a,
    previousStim: NBackStimType.a,
    matching: true,
  );
  const stimB = NBackStim(
    currentStim: NBackStimType.b,
    previousStim: NBackStimType.b,
    matching: true,
  );
  const stimC = NBackStim(
    currentStim: NBackStimType.c,
    previousStim: NBackStimType.c,
    matching: true,
  );
  const matchingTrials = <Trial<NBackStim>>[
    Trial(stim: stimA),
    Trial(stim: stimB),
    Trial(stim: stimC),
  ];

  final finalTrials = <Trial<NBackStim>>[];
  for (var i = 0; i < trialCount; i++) {
    final randomIndex = Random().nextInt(matchingTrials.length);
    final matchingTrial = matchingTrials[randomIndex];
    finalTrials.add(matchingTrial);
  }
  return finalTrials;
}

List<Trial<NBackStim>> buildNonMatchingTrials({required int trialCount}) {
  const stim1 = NBackStim(
    currentStim: NBackStimType.a,
    previousStim: NBackStimType.b,
    matching: false,
  );
  const stim2 = NBackStim(
    currentStim: NBackStimType.a,
    previousStim: NBackStimType.c,
    matching: false,
  );
  const stim3 = NBackStim(
    currentStim: NBackStimType.b,
    previousStim: NBackStimType.c,
    matching: false,
  );
  const nonMatchingTrials = <Trial<NBackStim>>[
    Trial(stim: stim1),
    Trial(stim: stim2),
    Trial(stim: stim3),
  ];

  final finalTrials = <Trial<NBackStim>>[];
  for (var i = 0; i < trialCount; i++) {
    final randomIndex = Random().nextInt(nonMatchingTrials.length);
    final nonMatchingTrial = nonMatchingTrials[randomIndex];
    finalTrials.add(nonMatchingTrial);
  }
  return finalTrials;
}

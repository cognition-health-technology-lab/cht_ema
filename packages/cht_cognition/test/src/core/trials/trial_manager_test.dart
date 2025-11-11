import 'package:cht_cognition/src/core/trials/trial_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late TrialManager<int> trialManager;

  setUp(() {
    trialManager = TrialManager<int>(trials: [1, 2, 3, 4, 5]);
  });

  group('nextTrial', () {
    test(
      'Before called for the first time, '
      'current trial is the first original trial, '
      'the first used trial is the first original trial, '
      'the first original trial is not in the unused trials.',
      () {
        final firstOriginalTrial = trialManager.originalTrials.first;

        expect(trialManager.currentTrial, firstOriginalTrial);
        expect(trialManager.usedTrials.first, firstOriginalTrial);
        expect(trialManager.unusedTrials.contains(firstOriginalTrial), isFalse);
      },
    );
    test(
      'When called for the first time, '
      'the trial returned is the second original trial, '
      'the current trial is the second original trial, '
      'the second used trial is the second original trial, '
      'the second original trial is not in the unused trials.',
      () {
        final trial = trialManager.nextTrial();
        final secondOriginalTrial = trialManager.originalTrials[1];

        expect(trial, secondOriginalTrial);
        expect(trialManager.currentTrial, secondOriginalTrial);
        expect(trialManager.usedTrials[1], secondOriginalTrial);
        expect(
          trialManager.unusedTrials.contains(secondOriginalTrial),
          isFalse,
        );
      },
    );
    test(
      'When called twice, '
      'the trial returned is the third original trial, '
      'the current trial is the third original trial, '
      'the third used trial is the third original trial, '
      'the third original trial is not in the unused trials.',
      () {
        trialManager.nextTrial();
        final trial = trialManager.nextTrial();
        final thirdOriginalTrial = trialManager.originalTrials[2];

        expect(trial, thirdOriginalTrial);
        expect(trialManager.currentTrial, thirdOriginalTrial);
        expect(trialManager.usedTrials[2], thirdOriginalTrial);
        expect(
          trialManager.unusedTrials.contains(thirdOriginalTrial),
          isFalse,
        );
      },
    );
  });
}

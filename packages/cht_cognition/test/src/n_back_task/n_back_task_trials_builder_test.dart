import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/n_back_task/n_back_stim.dart';
import 'package:cht_cognition/src/n_back_task/n_back_task_trials_builder.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('buildNBackTrials', () {
    test(
      'When given n < 1, throws an error',
      () {
        expect(
          () => buildNBackTrials(n: 0, matchProportion: 0.5),
          throwsArgumentError,
        );
        expect(
          () => buildNBackTrials(n: -1, matchProportion: 0.5),
          throwsArgumentError,
        );
      },
    );
    test(
      'When given n = 30, match proportion = .30, creates a list of 30 trials '
      'with the correct match/non-match proportion',
      () {
        final trials = buildNBackTrials(n: 10, matchProportion: 0.3);

        expect(trials.length, 10);

        final matchingCount = trials.where(
          (trial) => trial.stim.matching,
        );
        expect(matchingCount, 3);

        final nonMatchingCount = trials.where(
          (trial) => !trial.stim.matching,
        );
        expect(nonMatchingCount, 7);
      },
    );
  });
}

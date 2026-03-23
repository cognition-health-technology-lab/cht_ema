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
      'When given n = 30, match proportion = .30, max consecutive '
      'matches = 3, creates a list of 30 trials with the correct match '
      'proportion and no more than 3 consecutive matches',
      () {
        final trials = buildNBackTrials(n: 30, matchProportion: 0.3);
        expect(trials.length, 30);

        var matchCount = 0;
        for (var i = 1; i < trials.length; i++) {
          if (trials[i].stim == trials[i - 1].stim) {
            matchCount++;
          }
        }
        expect(matchCount, 9);
      },
    );
  });
}

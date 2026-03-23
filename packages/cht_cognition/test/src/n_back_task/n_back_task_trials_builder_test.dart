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
          buildNBackTrials,
          throwsArgumentError,
        );
        expect(
          buildNBackTrials,
          throwsArgumentError,
        );
      },
    );
    test(
      'When given n = 30, match proportion = .30, max consecutive '
      'matches = 3, creates a list of 30 trials with the correct match '
      'proportion and no more than 3 consecutive matches',
      () {
        final trials = buildNBackTrials();

        expect(trials.length, 30);

        final adjacentMatchCount = _countAdjacentMatches(trials);
        expect(adjacentMatchCount, 9);

        final consecutiveMatchStreakLength = _countLongestMatchStreak(
          trials,
        );
        expect(consecutiveMatchStreakLength, 3);
      },
    );
  });
}

int _countAdjacentMatches(List<Trial<NBackStim>> trials) {
  var count = 0;
  for (var i = 1; i < trials.length; i++) {
    if (trials[i].stim == trials[i - 1].stim) {
      count++;
    }
  }
  return count;
}

int _countLongestMatchStreak(List<Trial<NBackStim>> trials) {
  var currentStreak = 0;
  var longestStreak = 0;

  for (var i = 1; i < trials.length; i++) {
    if (trials[i].stim == trials[i - 1].stim) {
      currentStreak++;
      if (currentStreak > longestStreak) {
        longestStreak = currentStreak;
      }
    } else {
      currentStreak = 0;
    }
  }

  return longestStreak;
}

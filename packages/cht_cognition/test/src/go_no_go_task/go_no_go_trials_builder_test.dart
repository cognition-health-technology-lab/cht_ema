import 'package:cht_cognition/src/core/trials/randomization_type.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_stim.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_trials_builder.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('buildGoNoGoTrials', () {
    test(
      'When given an invalid go probability, throws an error',
      () {
        expect(
          () => buildGoNoGoTrials(n: 10, goProbability: -0.1),
          throwsArgumentError,
        );
        expect(
          () => buildGoNoGoTrials(n: 10, goProbability: 1.1),
          throwsArgumentError,
        );
      },
    );
    test(
      'Given n = 10 and go probability is .70, returns 7 go trials and 3 '
      'no-go trials',
      () {
        final trials = buildGoNoGoTrials(n: 10, goProbability: .70);

        final goTrials = trials
            .where((trial) => trial.stim == GoNoGoStim.go)
            .toList();

        expect(goTrials.length, 7);
      },
    );
    test(
      'Given n = 12 and go probability is .80, returns 9 go trials and 3 '
      'no-go trials',
      () {
        final trials = buildGoNoGoTrials(n: 12, goProbability: .8);
        final goTrials = trials
            .where((trial) => trial.stim == GoNoGoStim.go)
            .toList();

        expect(goTrials.length, 9);
      },
    );
  });
  test(
    'Passing RandomizationType.full, returns a list in a different order.',
    () {
      const seed = 2;
      final randomizedTrials = buildGoNoGoTrials(
        n: 10,
        goProbability: .1,
        // ignore: avoid_redundant_argument_values to ensure values even if function changes
        randomizationType: RandomizationType.full,
        seed: seed,
      );

      expect(randomizedTrials.first.stim, isNot(GoNoGoStim.go));
    },
  );
  test(
    'Passing RandomizationType.none, returns a list in the same order.',
    () {
      const seed = 2;
      final randomizedTrials = buildGoNoGoTrials(
        n: 10,
        goProbability: .9,
        randomizationType: RandomizationType.none,
        seed: seed,
      );

      expect(randomizedTrials.last.stim, GoNoGoStim.noGo);
    },
  );
}

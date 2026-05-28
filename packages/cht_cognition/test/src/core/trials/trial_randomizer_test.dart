import 'package:cht_cognition/src/core/trials/randomization_type.dart';
import 'package:cht_cognition/src/core/trials/trial_randomizer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RandomizationType = full, indirectly testing _fullRandomize', () {
    test(
      'Returns a new list with the same elements in a different order',
      () {
        const seed = 2;
        final originalList = <int>[1, 2, 3, 4, 5];
        final randomizedList = TrialRandomizer.randomize(
          trials: originalList,
          randomizationType: RandomizationType.full,
          seed: seed,
        );
        expect(randomizedList.toSet(), equals(originalList.toSet()));
        expect(randomizedList, isNot(equals(originalList)));
      },
    );
  });
}

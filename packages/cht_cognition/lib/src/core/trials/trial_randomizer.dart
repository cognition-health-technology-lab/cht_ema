import 'dart:math' show Random;

import 'package:cht_cognition/src/core/trials/randomization_type.dart';

class TrialRandomizer {
  const TrialRandomizer._();

  static List<T> randomize<T>({
    required List<T> trials,
    required RandomizationType randomizationType,
    int? seed,
  }) {
    switch (randomizationType) {
      case RandomizationType.none:
        return List<T>.from(trials);
      case RandomizationType.full:
        final random = Random(seed);
        return _fullRandomize(trials: trials, random: random);
    }
  }

  static List<T> _fullRandomize<T>({
    required List<T> trials,
    Random? random,
  }) {
    final newTrials = List<T>.from(trials);
    newTrials.shuffle(random);
    return newTrials;
  }
}

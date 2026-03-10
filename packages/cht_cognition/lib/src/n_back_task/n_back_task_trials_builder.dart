import 'package:cht_cognition/src/core/trials/randomization_type.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';

List<Trial<int>> buildNBackTrials({
  required int n,
  RandomizationType randomizationType = RandomizationType.full,
  int? seed,
}) {
  if (n < 1) {
    throw ArgumentError('n must be greater than 0');
  }
  return <Trial<int>>[];
}

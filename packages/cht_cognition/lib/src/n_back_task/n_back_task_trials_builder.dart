import 'package:cht_cognition/src/core/trials/randomization_type.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
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
  return <Trial<NBackStim>>[
    const Trial<NBackStim>(stim: NBackStim.a),
    const Trial<NBackStim>(stim: NBackStim.b),
    const Trial<NBackStim>(stim: NBackStim.c),
  ];
}

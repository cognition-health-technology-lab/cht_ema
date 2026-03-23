// import 'package:cht_cognition/src/core/trials/randomization_type.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/n_back_task/n_back_stim.dart';

List<Trial<NBackStim>> buildNBackTrials(
  //   {
  //   required int n,
  //   required double matchProportion,
  //   RandomizationType randomizationType = RandomizationType.full,
  //   int? seed,
  // }
) {
  const n = 30;
  const matchProportion = 0.3;
  const maxConsecutiveMatches = 3;

  if (n < 1) {
    throw ArgumentError('n must be greater than 0');
  }

  /// calculate counts by type
  const matchCount = n * matchProportion;
  const nonMatchCount = n - matchCount;

  /// plan next steps

  return const <Trial<NBackStim>>[
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.a),
    Trial<NBackStim>(stim: NBackStim.b),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.c),
    Trial<NBackStim>(stim: NBackStim.c),
  ];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'n_back_stim.freezed.dart';

enum NBackStimType { a, b, c }

@freezed
abstract class NBackStim with _$NBackStim {
  const factory NBackStim({
    required NBackStimType currentStim,
    required NBackStimType previousStim,
    required bool matching,
  }) = _NBackStim;
}

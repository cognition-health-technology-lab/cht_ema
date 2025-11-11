import 'package:freezed_annotation/freezed_annotation.dart';

part 'cognitive_task_state.freezed.dart';

@freezed
abstract class CognitiveTaskState<T> with _$CognitiveTaskState<T> {
  const factory CognitiveTaskState.instructions() = _Instructions;

  const factory CognitiveTaskState.trial({
    required T trial,
  }) = _Trial;

  const factory CognitiveTaskState.iti() = _ITI;
  const factory CognitiveTaskState.rest() = _Rest;
  const factory CognitiveTaskState.processing() = _Processing;
  const factory CognitiveTaskState.finished() = _Finished;
}

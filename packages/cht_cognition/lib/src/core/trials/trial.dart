import 'package:freezed_annotation/freezed_annotation.dart';

part 'trial.freezed.dart';

@freezed
abstract class Trial<T> with _$Trial<T> {
  const factory Trial({
    required T stim,
  }) = _Trial<T>;
}

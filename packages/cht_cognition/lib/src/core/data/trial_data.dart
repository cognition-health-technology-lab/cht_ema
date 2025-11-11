import 'package:freezed_annotation/freezed_annotation.dart';

part 'trial_data.freezed.dart';

@freezed
abstract class TrialData with _$TrialData {
  const factory TrialData({
    required String participantId,
    required String sessionId,
    required String stim,
    required String response,
    required DateTime startTime,
    required DateTime endTime,
  }) = _TrialData;
}

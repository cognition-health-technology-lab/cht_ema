import 'package:cht_cognition/src/core/data/session_data.dart';
import 'package:cht_cognition/src/core/data/trial_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cognitive_data.freezed.dart';

@freezed
abstract class CognitiveData with _$CognitiveData {
  const factory CognitiveData({
    required SessionData sessionData,
    required List<TrialData> trialData,
  }) = _CognitiveData;
}

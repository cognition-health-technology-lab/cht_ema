import 'dart:collection';

import 'package:cht_cognition/src/core/data/cognitive_data.dart';
import 'package:cht_cognition/src/core/data/session_data.dart';
import 'package:cht_cognition/src/core/data/trial_data.dart';

class DataManager {
  final List<TrialData> _trialData = <TrialData>[];
  final String participantId;
  final String sessionId;
  DateTime? startTime;
  DateTime? endTime;

  DataManager({
    required this.participantId,
    required this.sessionId,
  });

  List<TrialData> get trialData => UnmodifiableListView(_trialData);

  void addTrialData({
    required String stim,
    required String response,
    required DateTime startTime,
    required DateTime endTime,
  }) {
    final trial = TrialData(
      stim: stim,
      response: response,
      startTime: startTime,
      endTime: endTime,
      participantId: participantId,
      sessionId: sessionId,
    );
    _trialData.add(trial);
  }

  CognitiveData export() {
    final start = startTime;
    final end = endTime;
    if (start == null || end == null) {
      throw Exception('Cannot export data: startTime and endTime is not set.');
    }

    final sessionData = SessionData(
      participantId: participantId,
      sessionId: sessionId,
      startTime: start,
      endTime: end,
    );
    return CognitiveData(
      sessionData: sessionData,
      trialData: _trialData,
    );
  }
}

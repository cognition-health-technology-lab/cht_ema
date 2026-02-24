import 'dart:async';

import 'package:cht_cognition/src/core/data/data_manager.dart';
import 'package:cht_cognition/src/core/data/process_data_callback.dart';
import 'package:cht_cognition/src/core/state/cognitive_task_state.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/core/trials/trial_manager.dart';
import 'package:flutter/material.dart';

abstract class ViewModel<T> extends ChangeNotifier {
  final TrialManager<T> _trialManager;
  final DataManager _dataManager;
  final ProcessCognitiveDataCallback? _processData;
  late DateTime _trialStartTime;

  CognitiveTaskState<T> _state = CognitiveTaskState<T>.instructions();
  CognitiveTaskState<T> get state => _state;

  final int? _restEveryNTrials;
  final Duration? _trialTimeoutDuration;
  Timer? _trialTimeoutTimer;
  final Duration _itiDuration;

  ViewModel({
    required TrialManager<T> trialManager,
    required DataManager dataManager,
    required Duration itiDuration,
    int? restEveryNTrials,
    Duration? trialTimeoutDuration,
    ProcessCognitiveDataCallback? processData,
  }) : _trialManager = trialManager,
       _dataManager = dataManager,
       _processData = processData,
       _trialTimeoutDuration = trialTimeoutDuration,
       _restEveryNTrials = restEveryNTrials,
       _itiDuration = itiDuration;

  void init() {
    _dataManager.startTime = DateTime.now();
  }

  void onInstructions() {
    _startTrial();
  }

  void _prepNextTrial() {
    _trialManager.nextTrial();
  }

  void _startTrial() {
    _trialStartTime = DateTime.now();
    _setupTrialTimeout();
    _state = CognitiveTaskState<T>.trial(
      trial: _trialManager.currentTrial,
    );
    notifyListeners();
  }

  void onTrial({
    required String response,
  }) {
    _trialTimeoutTimer?.cancel();
    final trialEndTime = DateTime.now();
    final currentTrial = _trialManager.currentTrial as Trial;
    _dataManager.addTrialData(
      stim: currentTrial.stim.toString(),
      response: response,
      startTime: _trialStartTime,
      endTime: trialEndTime,
    );
    if (shouldFinish()) {
      onFinished();
    } else if (shouldRest()) {
      _state = CognitiveTaskState<T>.rest();
      notifyListeners();
    } else {
      _presentITI();
    }
  }

  void _presentITI() {
    _state = CognitiveTaskState<T>.iti();
    notifyListeners();
    Timer(_itiDuration, _startTrial);
    _prepNextTrial();
  }

  void onRest() {
    _presentITI();
  }

  bool shouldRest() {
    if (_trialManager.usedCount == 0 || _restEveryNTrials == null) return false;
    return _trialManager.usedCount % _restEveryNTrials == 0;
  }

  void onFinished() {
    if (_processData == null) {
      _state = CognitiveTaskState<T>.finished();
      notifyListeners();
      return;
    }
    _state = CognitiveTaskState<T>.processing();
    notifyListeners();
    _dataManager.endTime = DateTime.now();
    final data = _dataManager.export();
    _processData(data);
    _state = CognitiveTaskState<T>.finished();
    notifyListeners();
  }

  bool shouldFinish() {
    return _trialManager.unusedTrials.isEmpty;
  }

  void _setupTrialTimeout() {
    if (_trialTimeoutDuration == null) return;

    _trialTimeoutTimer?.cancel();
    _trialTimeoutTimer = Timer(
      _trialTimeoutDuration,
      () => onTrial(response: 'timeout'),
    );
  }
}

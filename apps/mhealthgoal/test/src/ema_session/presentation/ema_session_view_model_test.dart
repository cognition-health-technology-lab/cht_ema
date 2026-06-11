import 'package:cht_cognition/cht_cognition.dart';
import 'package:cht_cognition/src/core/data/session_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mhealthgoal/src/ema_session/data/ema_task.dart';
import 'package:mhealthgoal/src/ema_session/presentation/ema_session_view_model.dart';

void main() {
  late EmaSessionViewModel viewModel;

  setUp(() {
    viewModel = EmaSessionViewModel();
  });

  group('EmaSessionViewModel.init', () {
    test('currentTask returns an EMA task', () {
      viewModel.init();
      expect(viewModel.currentTask, isA<EmaTask>());
    });
  });

  group('EmaSessionViewModel.onCompleteCognitiveTask', () {
    test('when called, removes the current task from the EMA tasks.', () {
      viewModel.init();
      final initialTaskId = viewModel.currentTask.identifier;

      final sessionData = SessionData(
        participantId: '',
        sessionId: '',
        startTime: DateTime.now(),
        endTime: DateTime.now(),
      );
      final data = CognitiveData(sessionData: sessionData, trialData: []);

      viewModel.onCompleteCognitiveTask(data);
      expect(viewModel.currentTask.identifier, isNot(initialTaskId));
    });
  });
}

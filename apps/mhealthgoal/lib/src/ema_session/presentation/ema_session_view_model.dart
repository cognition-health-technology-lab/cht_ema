import 'package:cht_cognition/cht_cognition.dart';
import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/ema_session/data/ema_task.dart';

class EmaSessionViewModel extends ChangeNotifier {
  final _tasks = <EmaTask>[];

  Widget get currentTask => _tasks.first.builder();

  void init() {
    _setupTasks();
    _counterBalanceTasks();
  }

  void _setupTasks() {
    final goNoGoTask = EmaTask(
      identifier: 'Go/No-Go Task',
      description: 'A cognitive task that measures response inhibition (EF).',
      builder: () => GoNoGoTask(
        processData: onCompleteCognitiveTask,
        participantId: 'p001',
        sessionId: 's001',
        nTrials: 50,
        goProbability: .75,
        trialTimeoutDuration: const Duration(milliseconds: 750),
      ),
    );

    final nBackTask = EmaTask(
      identifier: 'N-Back Task',
      description:
          'A cognitive task that measures working memory updating (EF).',
      builder: () => NBackTask(
        processData: onCompleteCognitiveTask,
        participantId: 'p001',
        sessionId: 's001',
        nTrials: 50,
        matchProportion: .5,
        trialTimeoutDuration: const Duration(milliseconds: 750),
      ),
    );

    _tasks.addAll([goNoGoTask, nBackTask]);
  }

  void _counterBalanceTasks() {
    _tasks.shuffle();
  }

  // void runCurrentTask() {
  //   throw UnimplementedError();
  // }

  void onCompleteCognitiveTask(CognitiveData data) {
    throw UnimplementedError();
  }

  void nextTask() {
    throw UnimplementedError();
  }

  void onFinished() {
    throw UnimplementedError();
  }
}

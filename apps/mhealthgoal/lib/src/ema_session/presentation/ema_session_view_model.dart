import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/ema_session/data/ema_task.dart';

class EmaSessionViewModel extends ChangeNotifier {
  final _tasks = <EmaTask>[];

  Widget get currentTask => _tasks.first.builder(onComplete: onCompleteTask);

  void init() {
    throw UnimplementedError();
  }

  void _setupTasks() {
    throw UnimplementedError();
  }

  void _counterBalanceTasks() {
    throw UnimplementedError();
  }

  // void runCurrentTask() {
  //   throw UnimplementedError();
  // }

  void onCompleteTask() {
    throw UnimplementedError();
  }

  void nextTask() {
    throw UnimplementedError();
  }

  void onFinished() {
    throw UnimplementedError();
  }
}

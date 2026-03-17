import 'package:cht_cognition/src/core/trials/on_trial_callback_definition.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/n_back_task/n_back_stim.dart';
import 'package:flutter/material.dart';

class NBackTaskTrialPage extends StatelessWidget {
  final Trial<NBackStim> _trial;
  final OnTrialCallback _onFinished;

  const NBackTaskTrialPage({
    required Trial<NBackStim> trial,
    required OnTrialCallback onFinished,
    super.key,
  }) : _trial = trial,
       _onFinished = onFinished;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getStimWidget(),
      ),
    );
  }

  Widget getStimWidget() {
    return switch (_trial.stim) {
      NBackStim.a => const Icon(Icons.square_outlined),
      NBackStim.b => const Icon(Icons.circle_outlined),
      NBackStim.c => const Icon(Icons.pentagon_outlined),
    };
  }

  void _onTap() {
    _onFinished(
      response: 'tap',
    );
  }
}

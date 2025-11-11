import 'package:cht_cognition/src/core/trials/on_trial_callback_definition.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/go_no_go_task/go_no_go_stim.dart';
import 'package:flutter/material.dart';

class GoNoGoTrialPage extends StatelessWidget {
  final Trial<GoNoGoStim> _trial;
  final OnTrialCallback _onFinished;

  const GoNoGoTrialPage({
    required Trial<GoNoGoStim> trial,
    required OnTrialCallback onFinished,
    super.key,
  }) : _trial = trial,
       _onFinished = onFinished;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: GestureDetector(
              onTap: _onTap,
              child: Container(
                color: _trial.stim == GoNoGoStim.go ? Colors.green : Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onTap() {
    _onFinished(
      response: 'tap',
    );
  }
}

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
      bottomNavigationBar: ResponseWidget(
        onTap: _onFinished,
      ),
    );
  }

  Widget getStimWidget() {
    return StimWidget(trial: _trial);
  }
}

class StimWidget extends StatelessWidget {
  const StimWidget({
    required Trial<NBackStim> trial,
    super.key,
  }) : _trial = trial;

  final Trial<NBackStim> _trial;

  @override
  Widget build(BuildContext context) {
    return switch (_trial.stim) {
      NBackStim.a => const Icon(Icons.square_outlined),
      NBackStim.b => const Icon(Icons.circle_outlined),
      NBackStim.c => const Icon(Icons.pentagon_outlined),
    };
  }
}

class ResponseWidget extends StatelessWidget {
  final OnTrialCallback _onTap;

  const ResponseWidget({
    required OnTrialCallback onTap,
    super.key,
  }) : _onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ResponseButton(
            onTap: _onTap,
            buttonText: 'No match',
            response: 'no match',
          ),
          ResponseButton(
            onTap: _onTap,
            buttonText: 'Match',
            response: 'match',
          ),
        ],
      ),
    );
  }
}

class ResponseButton extends StatelessWidget {
  final String _buttonText;
  final String _response;

  const ResponseButton({
    required OnTrialCallback onTap,
    required String buttonText,
    required String response,
    super.key,
  }) : _onTap = onTap,
       _buttonText = buttonText,
       _response = response;

  final OnTrialCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _onTap(response: _response),
      child: Text(_buttonText),
    );
  }
}

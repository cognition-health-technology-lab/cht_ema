import 'package:cht_cognition/src/core/trials/on_trial_callback_definition.dart';
import 'package:cht_cognition/src/core/trials/trial.dart';
import 'package:cht_cognition/src/n_back_task/n_back_stim.dart';
import 'package:flutter/material.dart';

class NBackTaskTrialPage extends StatelessWidget {
  final Trial<NBackStim> _trial;
  final OnTrialCallback _onFinished;
  final bool _enableResponse;

  const NBackTaskTrialPage({
    required Trial<NBackStim> trial,
    required OnTrialCallback onFinished,
    required bool enableResponse,
    super.key,
  }) : _trial = trial,
       _onFinished = onFinished,
       _enableResponse = enableResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getStimWidget(),
      ),
      bottomNavigationBar: ResponseWidget(
        onTap: _onFinished,
        isEnabled: _enableResponse,
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
    return switch (_trial.stim.currentStim) {
      NBackStimType.a => const Icon(Icons.square_outlined, size: 100),
      NBackStimType.b => const Icon(Icons.circle_outlined, size: 100),
      NBackStimType.c => const Icon(Icons.pentagon_outlined, size: 100),
    };
  }
}

class ResponseWidget extends StatelessWidget {
  final bool _isEnabled;
  final OnTrialCallback _onTap;

  const ResponseWidget({
    required OnTrialCallback onTap,
    required bool isEnabled,
    super.key,
  }) : _onTap = onTap,
       _isEnabled = isEnabled;

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
            isEnabled: _isEnabled,
          ),
          ResponseButton(
            onTap: _onTap,
            buttonText: 'Match',
            response: 'match',
            isEnabled: _isEnabled,
          ),
        ],
      ),
    );
  }
}

class ResponseButton extends StatelessWidget {
  final String _buttonText;
  final String _response;
  final bool _isEnabled;

  const ResponseButton({
    required OnTrialCallback onTap,
    required String buttonText,
    required String response,
    required bool isEnabled,
    super.key,
  }) : _onTap = onTap,
       _buttonText = buttonText,
       _response = response,
       _isEnabled = isEnabled;

  final OnTrialCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isEnabled ? () => _onTap(response: _response) : null,
      child: Text(_buttonText),
    );
  }
}

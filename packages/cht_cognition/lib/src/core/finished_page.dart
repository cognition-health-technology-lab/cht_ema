import 'package:cht_cognition/cht_cognition.dart';
import 'package:cht_cognition/src/core/centered_page.dart';
import 'package:flutter/material.dart';

class FinishedPage extends StatelessWidget {
  final VoidCallback _onFinished;

  const FinishedPage({
    required VoidCallback onFinished,
    super.key,
  }) : _onFinished = onFinished;

  @override
  Widget build(BuildContext context) {
    final localization = ChtCognitionLocalization.of(context);
    return CenteredPage(
      child: <Widget>[
        Text(localization.endMessageMain),
        ElevatedButton.icon(
          onPressed: _onFinished,
          icon: const Icon(Icons.arrow_forward),
          label: Text(localization.continueButton),
        ),
      ],
    );
  }
}

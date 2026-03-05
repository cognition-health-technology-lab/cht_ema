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
    return CenteredPage(
      child: <Widget>[
        const Text('Finished'),
        ElevatedButton.icon(
          onPressed: _onFinished,
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Next'),
        ),
      ],
    );
  }
}

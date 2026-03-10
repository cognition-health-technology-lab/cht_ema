import 'package:cht_cognition/src/core/centered_page.dart';
import 'package:cht_cognition/src/core/l10n/generated/cht_cognition_localization.dart';
import 'package:flutter/material.dart';

class RestPage extends StatelessWidget {
  final VoidCallback _onFinished;

  const RestPage({
    required VoidCallback onFinished,
    super.key,
  }) : _onFinished = onFinished;

  @override
  Widget build(BuildContext context) {
    final localization = ChtCognitionLocalization.of(context);
    return CenteredPage(
      child: <Widget>[
        Text(localization.restMessageMain),
        ElevatedButton.icon(
          onPressed: _onFinished,
          icon: const Icon(Icons.arrow_forward),
          label: Text(localization.continueButton),
        ),
      ],
    );
  }
}

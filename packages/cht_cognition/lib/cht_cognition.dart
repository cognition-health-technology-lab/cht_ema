import 'package:cht_cognition/cht_cognition.dart';
import 'package:flutter/material.dart';

export 'package:cht_cognition/src/core/l10n/cht_rp_localization_loader.dart';
export 'package:cht_cognition/src/core/l10n/generated/cht_cognition_localization.dart';

class CognitiveTasksPage extends StatelessWidget {
  const CognitiveTasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = ChtCognitionLocalization.of(context);
    return Scaffold(body: Center(child: Text(localizations.placeholderText)));
  }
}

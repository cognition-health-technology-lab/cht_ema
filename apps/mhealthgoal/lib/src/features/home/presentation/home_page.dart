import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/l10n/generated/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(body: Center(child: Text(localizations.appTitle)));
  }
}

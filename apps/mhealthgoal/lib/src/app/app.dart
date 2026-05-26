import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/core/router/router.dart';
import 'package:mhealthgoal/src/l10n/generated/app_localizations.dart';

class MHealthGoalApp extends StatelessWidget {
  const MHealthGoalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}

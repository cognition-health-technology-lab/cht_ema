import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/features/home/presentation/home_page.dart';
import 'package:mhealthgoal/src/l10n/generated/app_localizations.dart';

class MHealthGoalApp extends StatelessWidget {
  const MHealthGoalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}

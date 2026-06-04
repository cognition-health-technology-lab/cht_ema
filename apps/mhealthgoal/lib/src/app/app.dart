import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/app/app_deps.dart';
import 'package:mhealthgoal/src/l10n/generated/app_localizations.dart';

class MHealthGoalApp extends StatelessWidget {
  final AppDependencies _appDependencies;

  const MHealthGoalApp({required AppDependencies appDependencies, super.key})
    : _appDependencies = appDependencies;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      routerConfig: _appDependencies.appRouter.router,
    );
  }
}

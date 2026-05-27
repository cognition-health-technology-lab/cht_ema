import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/core/router/router.dart';
import 'package:mhealthgoal/src/l10n/generated/app_localizations.dart';

class MHealthGoalApp extends StatelessWidget {
  final AppRouter _appRouter;

  const MHealthGoalApp({required AppRouter appRouter, super.key})
    : _appRouter = appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.router,
    );
  }
}

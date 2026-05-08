import 'package:cht_ema_surveys/cht_ema_surveys.dart';
import 'package:example_surveys/home_dashboard/home_dashboard.dart';
import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  final bool includeResearchPackageLocalizations;

  const ExampleApp({
    this.includeResearchPackageLocalizations = true,
    super.key,
  });

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  /// Null defaults to the system locale.
  Locale? locale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      localizationsDelegates: [
        ChtEmaSurveysLocalization.delegate,
        if (widget.includeResearchPackageLocalizations)
          ChtRpLocalizationLoader.rpDelegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      home: HomeDashboard(onLocaleChange: changeLocale),
    );
  }

  void changeLocale(Locale? locale) {
    setState(() => this.locale = locale);
  }
}

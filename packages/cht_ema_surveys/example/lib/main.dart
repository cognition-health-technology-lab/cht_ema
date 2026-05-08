import 'dart:async';

import 'package:cht_ema_surveys/cht_ema_surveys.dart';
import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:example_surveys/study_information/study_information_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _studyInformationSeenKey = 'hasSeenStudyInformation';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  final bool includeResearchPackageLocalizations;

  const ExampleApp({
    super.key,
    this.includeResearchPackageLocalizations = true,
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: [
        ChtEmaSurveysLocalization.delegate,
        if (widget.includeResearchPackageLocalizations)
          ChtRpLocalizationLoader.rpDelegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      home: StudyInformationGate(onLocaleChange: changeLocale),
    );
  }

  void changeLocale(Locale? locale) {
    setState(() => this.locale = locale);
  }
}

class StudyInformationGate extends StatefulWidget {
  final void Function(Locale?) onLocaleChange;

  const StudyInformationGate({required this.onLocaleChange, super.key});

  @override
  State<StudyInformationGate> createState() => _StudyInformationGateState();
}

class _StudyInformationGateState extends State<StudyInformationGate> {
  bool? hasSeenStudyInformation;

  @override
  void initState() {
    super.initState();
    unawaited(loadStudyInformationSeenState());
  }

  Future<void> loadStudyInformationSeenState() async {
    final preferences = await SharedPreferences.getInstance();
    if (!mounted) return;

    setState(() {
      hasSeenStudyInformation =
          preferences.getBool(_studyInformationSeenKey) ?? false;
    });
  }

  Future<void> completeStudyInformation() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setBool(_studyInformationSeenKey, true);
    if (!mounted) return;

    setState(() {
      hasSeenStudyInformation = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (hasSeenStudyInformation == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (!hasSeenStudyInformation!) {
      return StudyInformationPage(
        onContinue: () => unawaited(completeStudyInformation()),
      );
    }

    return HomePage(onLocaleChange: widget.onLocaleChange);
  }
}

class HomePage extends StatefulWidget {
  final void Function(Locale?) onLocaleChange;

  const HomePage({required this.onLocaleChange, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(localizations.appTitle),
        actions: <Widget>[
          IconButton(
            tooltip: localizations.studyInformationInfoTooltip,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const StudyInformationPage(),
              ),
            ),
            icon: const Icon(Icons.info_outline),
          ),
          PopupMenuButton<Locale?>(
            tooltip: localizations.languageToolTip,
            onSelected: widget.onLocaleChange,
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<Locale?>>[
                PopupMenuItem<Locale?>(
                  value: const Locale('en'),
                  child: Text(localizations.langOptionEn),
                ),
                PopupMenuItem<Locale?>(
                  value: const Locale('es'),
                  child: Text(localizations.langOptionEs),
                ),
              ];
            },
          ),
        ],
      ),
      body: const SurveyList(),
    );
  }
}

class SurveyList extends StatelessWidget {
  const SurveyList({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (context) => SurveyPage()),
              ),
              child: Text(
                localizations.homeMessage,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

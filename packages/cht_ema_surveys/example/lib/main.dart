import 'package:cht_cognition/cht_cognition.dart' as cognition;
import 'package:cht_ema_surveys/cht_ema_surveys.dart' as surveys;
import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:example_surveys/task_list/task_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

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
        cognition.ChtCognitionLocalization.delegate,
        surveys.ChtEmaSurveysLocalization.delegate,
        surveys.ChtRpLocalizationLoader.rpDelegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      home: HomePage(onLocaleChange: changeLocale),
    );
  }

  void changeLocale(Locale? locale) {
    setState(() => this.locale = locale);
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
      body: const TaskListPage(),
    );
  }
}

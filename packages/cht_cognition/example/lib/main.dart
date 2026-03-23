import 'package:cht_cognition/cht_cognition.dart';
import 'package:cht_cognition_example/l10n/generated/app_localizations.dart';
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
        ChtCognitionLocalization.delegate,
        ChtRpLocalizationLoader.rpDelegate,
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
      body: const CognitiveTasksList(),
    );
  }
}

class CognitiveTasksList extends StatelessWidget {
  const CognitiveTasksList({super.key});

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
                MaterialPageRoute<void>(
                  builder: (context) => GoNoGoTask(
                    processData: printData,
                    participantId: 'p1',
                    sessionId: 's1',
                    nTrials: 20,
                    goProbability: .75,
                    trialTimeoutDuration: const Duration(milliseconds: 750),
                    restEveryNTrials: 10,
                  ),
                ),
              ),
              child: Text(
                localizations.goNoGoExample,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => NBackTask(
                    processData: printData,
                    participantId: 'p1',
                    sessionId: 's1',
                    trialTimeoutDuration: const Duration(milliseconds: 1500),
                    restEveryNTrials: 100,
                  ),
                ),
              ),
              child: Text(
                localizations.nBackExample,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void printData(CognitiveData data) {
  debugPrint(data.toString());
}

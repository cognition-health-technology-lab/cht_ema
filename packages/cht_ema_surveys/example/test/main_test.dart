import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:example_surveys/main.dart';
import 'package:example_surveys/study_information/study_information_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  testWidgets('StudyInformationPage displays required study sections', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: StudyInformationPage(),
      ),
    );

    expect(find.text('Study information'), findsOneWidget);
    expect(find.text('Study title'), findsOneWidget);
    expect(find.text('CHT EMA Study'), findsOneWidget);
    expect(find.text('Study description'), findsOneWidget);
    expect(
      find.textContaining('brief surveys about their daily experiences'),
      findsOneWidget,
    );
    expect(find.text('Principal investigator / research team'), findsOneWidget);
    expect(find.text('CHT EMA research team'), findsOneWidget);
    expect(find.text('Study duration and time commitment'), findsOneWidget);
    expect(find.textContaining('Each survey should take'), findsOneWidget);
    expect(find.text('Contact information'), findsOneWidget);
    expect(find.textContaining('study coordinator'), findsOneWidget);
    expect(find.text('Continue'), findsNothing);
  });

  testWidgets('StudyInformationPage continue button is optional', (
    tester,
  ) async {
    var didContinue = false;

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: StudyInformationPage(onContinue: () => didContinue = true),
      ),
    );

    await tester.dragUntilVisible(
      find.text('Continue'),
      find.byType(ListView),
      const Offset(0, -50),
    );
    await tester.tap(find.text('Continue'));

    expect(didContinue, isTrue);
  });

  testWidgets(
    'shows study information before the home screen on first launch',
    (tester) async {
      await setMockPreferences(<String, Object>{});

      await tester.pumpWidget(
        ExampleApp(
          key: UniqueKey(),
          includeResearchPackageLocalizations: false,
        ),
      );
      await pumpUntilFound(tester, find.text('Study information'));

      expect(find.text('Study information'), findsOneWidget);
      expect(find.text('Study title'), findsOneWidget);
      expect(find.text('Home screen'), findsNothing);

      await tester.dragUntilVisible(
        find.text('Continue'),
        find.byType(ListView),
        const Offset(0, -50),
      );
      await tester.tap(find.text('Continue'));
      await pumpUntilFound(tester, find.text('Home screen'));

      expect(find.text('Home screen'), findsOneWidget);

      final preferences = await SharedPreferences.getInstance();
      expect(preferences.getBool('hasSeenStudyInformation'), isTrue);

      await tester.pumpWidget(const SizedBox.shrink());
    },
  );

  testWidgets('info button opens study information after first launch', (
    tester,
  ) async {
    await setMockPreferences(<String, Object>{'hasSeenStudyInformation': true});

    await tester.pumpWidget(
      ExampleApp(key: UniqueKey(), includeResearchPackageLocalizations: false),
    );
    await pumpUntilFound(tester, find.text('Home screen'));

    expect(find.text('Home screen'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.info_outline));
    await pumpUntilFound(tester, find.text('Study information'));

    expect(find.text('Study information'), findsOneWidget);
    expect(find.text('Contact information'), findsOneWidget);
  });
}

Future<void> setMockPreferences(Map<String, Object> values) async {
  SharedPreferences.resetStatic();
  SharedPreferences.setMockInitialValues(values);
  await SharedPreferences.getInstance();
}

Future<void> pumpUntilFound(WidgetTester tester, Finder finder) async {
  for (var pump = 0; pump < 100; pump += 1) {
    await tester.pump(const Duration(milliseconds: 50));
    if (finder.evaluate().isNotEmpty) return;
  }
}

import 'package:example_surveys/home_dashboard/home_dashboard.dart';
import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders the redesigned dashboard in English', (
    WidgetTester tester,
  ) async {
    await pumpDashboard(tester, const Locale('en'));

    expect(find.text('mHealthGoal'), findsOneWidget);
    expect(find.text('Tasks'), findsNWidgets(2));
    expect(find.text('Instructions'), findsNWidgets(2));
    expect(find.text('About Us'), findsNWidgets(2));
    expect(find.text('Home'), findsOneWidget);
    expect(find.byType(NavigationBar), findsNothing);
  });

  testWidgets('renders the redesigned dashboard in Spanish', (
    WidgetTester tester,
  ) async {
    await pumpDashboard(tester, const Locale('es'));

    expect(find.text('mHealthGoal'), findsOneWidget);
    expect(find.text('Tareas'), findsNWidgets(2));
    expect(find.text('Instrucciones'), findsNWidgets(2));
    expect(find.text('Sobre Nosotros'), findsNWidgets(2));
    expect(find.text('Hogar'), findsOneWidget);
  });

  testWidgets('dashboard controls update the selected destination', (
    WidgetTester tester,
  ) async {
    await pumpDashboard(tester, const Locale('es'));

    expect(
      find.byKey(const ValueKey<String>('dashboard-nav-0-selected')),
      findsOneWidget,
    );

    for (final entry in <MapEntry<String, int>>[
      const MapEntry<String, int>('Instrucciones', 1),
      const MapEntry<String, int>('Tareas', 2),
      const MapEntry<String, int>('Sobre Nosotros', 3),
    ]) {
      final label = entry.key;
      final index = entry.value;

      await tester.tap(find.text(label).first);
      await tester.pumpAndSettle();

      expect(
        find.byKey(ValueKey<String>('dashboard-nav-$index-selected')),
        findsOneWidget,
      );
    }

    await tester.tap(find.text('Hogar'));
    await tester.pumpAndSettle();

    expect(
      find.byKey(const ValueKey<String>('dashboard-nav-0-selected')),
      findsOneWidget,
    );
  });

  testWidgets('bottom navigation uses the requested order', (
    WidgetTester tester,
  ) async {
    await pumpDashboard(tester, const Locale('en'));

    final navLeftPositions = <double>[
      tester.getTopLeft(find.text('Home')).dx,
      tester.getTopLeft(find.text('Instructions').last).dx,
      tester.getTopLeft(find.text('Tasks').last).dx,
      tester.getTopLeft(find.text('About Us').last).dx,
    ];

    expect(navLeftPositions, orderedEquals(navLeftPositions.toList()..sort()));
  });
}

Future<void> pumpDashboard(WidgetTester tester, Locale locale) async {
  addTearDown(() async {
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
  });

  await tester.pumpWidget(
    MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      home: HomeDashboard(onLocaleChange: (_) {}),
    ),
  );
  await tester.pumpAndSettle();
}

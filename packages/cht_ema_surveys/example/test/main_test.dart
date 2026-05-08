import 'package:example_surveys/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders the dashboard template', (WidgetTester tester) async {
    await pumpExampleApp(tester);

    expect(find.text('CHT Surveys Example'), findsOneWidget);
    expect(find.text('PLANNED ACTIVITIES'), findsOneWidget);
    expect(find.text('Morning'), findsOneWidget);
    expect(find.text('Spending time in nature'), findsOneWidget);
    expect(find.text('Overview'), findsOneWidget);
    expect(find.text('Surveys'), findsOneWidget);

    await tester.tap(find.text('Surveys'));
    await tester.pumpAndSettle();

    expect(find.text('PLANNED ACTIVITIES'), findsOneWidget);
    expect(find.byType(NavigationBar), findsOneWidget);
  });

  testWidgets('language menu switches the dashboard locale', (
    WidgetTester tester,
  ) async {
    await pumpExampleApp(tester);

    await tester.tap(find.byIcon(Icons.language));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Español'));
    await tester.pumpAndSettle();

    expect(find.text('Ejemplo CHT Encuestas'), findsOneWidget);
    expect(find.text('ACTIVIDADES PLANIFICADAS'), findsOneWidget);
    expect(find.text('Mañana'), findsOneWidget);
    expect(find.text('Encuestas'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.language));
    await tester.pumpAndSettle();

    await tester.tap(find.text('English'));
    await tester.pumpAndSettle();

    expect(find.text('CHT Surveys Example'), findsOneWidget);
    expect(find.text('PLANNED ACTIVITIES'), findsOneWidget);
  });
}

Future<void> pumpExampleApp(WidgetTester tester) async {
  addTearDown(() async {
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
  });

  await tester.pumpWidget(
    const ExampleApp(includeResearchPackageLocalizations: false),
  );
  await tester.pumpAndSettle();
}

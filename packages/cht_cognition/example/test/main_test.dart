import 'package:cht_cognition_example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('language selector switches the cognition example language', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ExampleApp());
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.translate), findsOneWidget);

    await tester.tap(find.byIcon(Icons.translate));
    await tester.pumpAndSettle();

    expect(find.text('English'), findsOneWidget);
    expect(find.text('Español'), findsOneWidget);

    await tester.tap(find.text('English'));
    await tester.pumpAndSettle();

    expect(find.text('CHT Cognitive Tasks Example'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.translate));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Español'));
    await tester.pumpAndSettle();

    expect(find.text('Ejemplo CHT Tareas Cognitivas'), findsOneWidget);
    expect(find.text('CHT Cognitive Tasks Example'), findsNothing);
  });
}

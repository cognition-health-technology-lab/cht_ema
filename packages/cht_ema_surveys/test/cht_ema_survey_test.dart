import 'package:cht_ema_surveys/cht_ema_surveys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<void> pumpIpaqPage(WidgetTester tester, Locale locale) async {
    await tester.pumpWidget(
      MaterialApp(
        locale: locale,
        localizationsDelegates:
            ChtEmaSurveysLocalization.localizationsDelegates,
        supportedLocales: ChtEmaSurveysLocalization.supportedLocales,
        home: IPAQPage(navigateOnFinish: (_) {}),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('uses English question label in the heading bar', (tester) async {
    await pumpIpaqPage(tester, const Locale('en'));

    await tester.tap(find.text('Continue'));
    await tester.pumpAndSettle();

    expect(find.text('Question 1'), findsOneWidget);
    expect(find.text('Pregunta 1'), findsNothing);
  });

  testWidgets('uses Spanish question label in the heading bar', (tester) async {
    await pumpIpaqPage(tester, const Locale('es'));

    await tester.tap(find.text('Continuar'));
    await tester.pumpAndSettle();

    expect(find.text('Pregunta 1'), findsOneWidget);
  });
}

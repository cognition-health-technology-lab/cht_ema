import 'package:example_surveys/l10n/generated/app_localizations_en.dart';
import 'package:example_surveys/task_list/task_catalog.dart';
import 'package:example_surveys/task_list/task_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('task list displays configured items', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TaskListPage(
          title: 'Available tasks',
          items: <TaskListItem>[
            TaskListItem(
              id: 'first',
              title: 'First task',
              scope: 'Cognition',
              description: 'First description',
              icon: Icons.looks_one_outlined,
              destinationBuilder: (_) => const SizedBox.shrink(),
            ),
            TaskListItem(
              id: 'second',
              title: 'Second task',
              scope: 'Survey',
              description: 'Second description',
              icon: Icons.looks_two_outlined,
              destinationBuilder: (_) => const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );

    expect(find.text('Available tasks'), findsOneWidget);
    expect(find.text('First task'), findsOneWidget);
    expect(find.text('Second task'), findsOneWidget);
    expect(find.byKey(const Key('task-tile-first')), findsOneWidget);
    expect(find.byKey(const Key('task-tile-second')), findsOneWidget);
  });

  testWidgets('tapping a task opens its configured destination', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TaskListPage(
          title: 'Available tasks',
          items: <TaskListItem>[
            TaskListItem(
              id: 'destination',
              title: 'Open destination',
              scope: 'Survey',
              description: 'Navigation test',
              icon: Icons.open_in_new,
              destinationBuilder: (_) => const Scaffold(
                body: Center(child: Text('Destination opened')),
              ),
            ),
          ],
        ),
      ),
    );

    await tester.tap(find.byKey(const Key('task-tile-destination')));
    await tester.pumpAndSettle();

    expect(find.text('Destination opened'), findsOneWidget);
  });

  test('task catalog contains unique branch-supported task IDs', () {
    final items = buildTaskCatalog(AppLocalizationsEn());
    final ids = items.map((item) => item.id).toList();

    expect(ids, orderedEquals(<String>['goNoGo', 'survey']));
    expect(ids.toSet().length, ids.length);
  });
}

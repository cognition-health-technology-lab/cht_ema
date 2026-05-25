import 'package:cht_cognition/cht_cognition.dart' as cognition;
import 'package:cht_ema_surveys/cht_ema_surveys.dart' as surveys;
import 'package:flutter/material.dart';

const List<TaskListItem> taskListItems = <TaskListItem>[
  TaskListItem(
    id: 'go_no_go',
    title: 'Go/No-Go',
    scope: 'Cognition',
    description: 'Response inhibition task',
    icon: Icons.touch_app_outlined,
    destination: TaskListDestination.goNoGo,
  ),
  TaskListItem(
    id: 'survey',
    title: 'Survey',
    scope: 'Survey',
    description: 'Example EMA survey',
    icon: Icons.mood_outlined,
    destination: TaskListDestination.survey,
  ),
];

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final crossAxisCount = _crossAxisCountForWidth(
              constraints.maxWidth,
            );
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Available tasks',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      itemCount: taskListItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 2.8,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final item = taskListItems[index];
                        return TaskTile(
                          key: Key('task-tile-${item.id}'),
                          item: item,
                          onTap: () => _openTask(context, item.destination),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  int _crossAxisCountForWidth(double width) {
    if (width >= 1000) return 3;
    if (width >= 600) return 2;
    return 1;
  }

  void _openTask(BuildContext context, TaskListDestination destination) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return switch (destination) {
            TaskListDestination.goNoGo => cognition.GoNoGoTask(
              processData: _printCognitiveData,
              participantId: 'p1',
              sessionId: 's1',
              nTrials: 20,
              goProbability: .75,
              trialTimeoutDuration: const Duration(milliseconds: 750),
              restEveryNTrials: 10,
            ),
            TaskListDestination.survey => surveys.SurveyPage(),
          };
        },
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final TaskListItem item;
  final VoidCallback? onTap;

  const TaskTile({required this.item, this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox.square(dimension: 48, child: Icon(item.icon)),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.scope,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}

class TaskListItem {
  final String id;
  final String title;
  final String scope;
  final String description;
  final IconData icon;
  final TaskListDestination destination;

  const TaskListItem({
    required this.id,
    required this.title,
    required this.scope,
    required this.description,
    required this.icon,
    required this.destination,
  });
}

enum TaskListDestination { goNoGo, survey }

void _printCognitiveData(cognition.CognitiveData data) {
  debugPrint(data.toString());
}

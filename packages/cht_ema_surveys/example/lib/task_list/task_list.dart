import 'package:flutter/material.dart';

const List<TaskListItem> taskListItems = <TaskListItem>[
  TaskListItem(
    id: 'n_back',
    title: 'N-Back',
    scope: 'Cognition',
    description: 'Working memory task',
    icon: Icons.psychology_alt_outlined,
  ),
  TaskListItem(
    id: 'go_no_go',
    title: 'Go/No-Go',
    scope: 'Cognition',
    description: 'Response inhibition task',
    icon: Icons.touch_app_outlined,
  ),
  TaskListItem(
    id: 'trail_making',
    title: 'Trail Making',
    scope: 'Cognition',
    description: 'Cognitive flexibility task',
    icon: Icons.route_outlined,
  ),
  TaskListItem(
    id: 'ipaq',
    title: 'IPAQ',
    scope: 'Survey',
    description: 'International Physical Activity Questionnaire',
    icon: Icons.directions_run_outlined,
  ),
  TaskListItem(
    id: 'erq',
    title: 'ERQ',
    scope: 'Survey',
    description: 'Emotion Regulation Questionnaire',
    icon: Icons.mood_outlined,
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
                          onTap: () => _showTaskPlaceholder(context, item),
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

  void _showTaskPlaceholder(BuildContext context, TaskListItem item) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(content: Text('${item.title} task is not available yet.')),
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

  const TaskListItem({
    required this.id,
    required this.title,
    required this.scope,
    required this.description,
    required this.icon,
  });
}

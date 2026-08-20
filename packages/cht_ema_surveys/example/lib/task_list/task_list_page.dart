import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  final String title;
  final List<TaskListItem> items;

  const TaskListPage({required this.title, required this.items, super.key});

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
                  Text(title, style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      itemCount: items.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 2.8,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final item = items[index];

                        return _TaskTile(
                          key: Key('task-tile-${item.id}'),
                          item: item,
                          onTap: () => _openTask(context, item),
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

  void _openTask(BuildContext context, TaskListItem item) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: item.destinationBuilder));
  }
}

class TaskListItem {
  final String id;
  final String title;
  final String scope;
  final String description;
  final IconData icon;
  final WidgetBuilder destinationBuilder;

  const TaskListItem({
    required this.id,
    required this.title,
    required this.scope,
    required this.description,
    required this.icon,
    required this.destinationBuilder,
  });
}

class _TaskTile extends StatelessWidget {
  final TaskListItem item;
  final VoidCallback onTap;

  const _TaskTile({required this.item, required this.onTap, super.key});

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

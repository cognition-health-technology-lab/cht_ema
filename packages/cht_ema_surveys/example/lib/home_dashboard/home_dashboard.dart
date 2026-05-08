import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatefulWidget {
  final void Function(Locale?) onLocaleChange;

  const HomeDashboard({required this.onLocaleChange, super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final dateText = MaterialLocalizations.of(
      context,
    ).formatFullDate(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,
        title: Row(
          children: <Widget>[
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                localizations.appTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          PopupMenuButton<Locale?>(
            key: const Key('language-menu'),
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _DateStrip(
              dateText: dateText,
              todayLabel: localizations.dashboardTodayLabel,
            ),
            _SectionHeader(title: localizations.dashboardPlannedActivities),
            Expanded(child: _ActivityList(localizations: localizations)),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (int index) {
          setState(() => selectedIndex = index);
        },
        destinations: <NavigationDestination>[
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home),
            label: localizations.dashboardTabOverview,
          ),
          NavigationDestination(
            icon: const Icon(Icons.assignment_outlined),
            selectedIcon: const Icon(Icons.assignment),
            label: localizations.dashboardTabSurveys,
          ),
          NavigationDestination(
            icon: const Icon(Icons.psychology_outlined),
            selectedIcon: const Icon(Icons.psychology),
            label: localizations.dashboardTabTasks,
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings),
            label: localizations.dashboardTabSettings,
          ),
        ],
      ),
    );
  }
}

class _DateStrip extends StatelessWidget {
  final String dateText;
  final String todayLabel;

  const _DateStrip({required this.dateText, required this.todayLabel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    todayLabel,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    dateText.toUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      color: colorScheme.primaryContainer,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title.toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActivityList extends StatelessWidget {
  final AppLocalizations localizations;

  const _ActivityList({required this.localizations});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        _TimeGroupHeader(label: localizations.dashboardMorning),
        _ActivityTile(
          icon: Icons.edit_note,
          title: localizations.dashboardActivityERQ,
        ),
        _TimeGroupHeader(label: localizations.dashboardAfternoon),
        _ActivityTile(
          icon: Icons.edit_note,
          title: localizations.dashboardActivityIPAQ,
        ),
        _TimeGroupHeader(label: localizations.dashboardEvening),
        _ActivityTile(
          icon: Icons.edit_note,
          title: localizations.dashboardActivityGoNoGo,
        ),
        _ActivityTile(
          icon: Icons.edit_note,
          title: localizations.dashboardActivityNBack,
        ),
      ],
    );
  }
}

class _TimeGroupHeader extends StatelessWidget {
  final String label;

  const _TimeGroupHeader({required this.label});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ColoredBox(
      color: colorScheme.surfaceContainerHighest,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}

class _ActivityTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ActivityTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(bottom: BorderSide(color: colorScheme.outlineVariant)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: <Widget>[
            Icon(icon, color: colorScheme.primary, size: 30),
            const SizedBox(width: 28),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Icon(Icons.construction, color: colorScheme.onSurfaceVariant),
          ],
        ),
      ),
    );
  }
}

import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

class StudyInformationPage extends StatelessWidget {
  final VoidCallback? onContinue;

  const StudyInformationPage({super.key, this.onContinue});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(localizations.studyInformationPageTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: <Widget>[
            _StudyInformationSection(
              icon: Icons.assignment_outlined,
              label: localizations.studyInformationStudyTitleLabel,
              value: localizations.studyInformationStudyTitleValue,
            ),
            const Divider(height: 32),
            _StudyInformationSection(
              icon: Icons.description_outlined,
              label: localizations.studyInformationDescriptionLabel,
              value: localizations.studyInformationDescriptionValue,
            ),
            const Divider(height: 32),
            _StudyInformationSection(
              icon: Icons.groups_outlined,
              label: localizations.studyInformationResearchTeamLabel,
              value: localizations.studyInformationResearchTeamValue,
            ),
            const Divider(height: 32),
            _StudyInformationSection(
              icon: Icons.schedule_outlined,
              label: localizations.studyInformationTimeCommitmentLabel,
              value: localizations.studyInformationTimeCommitmentValue,
            ),
            const Divider(height: 32),
            _StudyInformationSection(
              icon: Icons.contact_mail_outlined,
              label: localizations.studyInformationContactLabel,
              value: localizations.studyInformationContactValue,
            ),
            if (onContinue != null) ...<Widget>[
              const SizedBox(height: 32),
              ElevatedButton.icon(
                onPressed: onContinue,
                icon: const Icon(Icons.arrow_forward),
                label: Text(localizations.studyInformationContinueButton),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _StudyInformationSection extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _StudyInformationSection({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(icon, color: colorScheme.primary),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                label,
                style: textTheme.titleMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(value, style: textTheme.bodyLarge),
            ],
          ),
        ),
      ],
    );
  }
}

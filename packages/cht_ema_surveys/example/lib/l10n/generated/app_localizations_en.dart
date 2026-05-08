// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'CHT Surveys Example';

  @override
  String get homeMessage => 'Home screen';

  @override
  String get languageToolTip => 'Select Language';

  @override
  String get langOptionEn => 'English';

  @override
  String get langOptionEs => 'Español';

  @override
  String get studyInformationPageTitle => 'Study information';

  @override
  String get studyInformationInfoTooltip => 'Study information';

  @override
  String get studyInformationContinueButton => 'Continue';

  @override
  String get studyInformationStudyTitleLabel => 'Study title';

  @override
  String get studyInformationStudyTitleValue => 'mHealthGoals';

  @override
  String get studyInformationDescriptionLabel => 'Study description';

  @override
  String get studyInformationDescriptionValue =>
      'This study invites participants to complete brief surveys about their daily experiences so the research team can better understand participation in everyday contexts.';

  @override
  String get studyInformationResearchTeamLabel =>
      'Principal investigator / research team';

  @override
  String get studyInformationResearchTeamValue =>
      'Dr. Mario Bermonti-Pérez, PhD\nCognition, Health, and Technology Lab';

  @override
  String get studyInformationTimeCommitmentLabel =>
      'Study duration and time commitment';

  @override
  String get studyInformationTimeCommitmentValue =>
      'Participants complete brief questionnaires and cognitive tasks during the study period. Each questionnaire or task should take only a few minutes.';

  @override
  String get studyInformationContactLabel => 'Contact information';

  @override
  String get studyInformationContactValue => 'Email: chtlaboratory@psm.edu';
}

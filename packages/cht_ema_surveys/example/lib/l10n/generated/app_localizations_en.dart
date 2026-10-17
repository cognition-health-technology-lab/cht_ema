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
  String get taskListTitle => 'Available tasks';

  @override
  String get taskScopeCognition => 'Cognition';

  @override
  String get taskScopeSurvey => 'Survey';

  @override
  String get goNoGoTaskTitle => 'Go/No-Go';

  @override
  String get goNoGoTaskDescription => 'Response inhibition task';

  @override
  String get surveyTaskTitle => 'Survey';

  @override
  String get surveyTaskDescription => 'Example EMA survey';

  @override
  String get languageToolTip => 'Select Language';

  @override
  String get langOptionEn => 'English';

  @override
  String get langOptionEs => 'Español';
}

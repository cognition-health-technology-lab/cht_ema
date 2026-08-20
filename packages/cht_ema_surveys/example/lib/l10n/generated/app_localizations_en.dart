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
  String get chronicHealthButtonLabel => 'Chronic Health Questionnaire';

  @override
  String get languageToolTip => 'Select Language';

  @override
  String get langOptionEn => 'English';

  @override
  String get langOptionEs => 'Español';
}

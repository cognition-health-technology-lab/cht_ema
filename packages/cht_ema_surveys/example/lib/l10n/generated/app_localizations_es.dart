// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Ejemplo CHT Encuestas';

  @override
  String get taskListTitle => 'Tareas disponibles';

  @override
  String get taskScopeCognition => 'Cognición';

  @override
  String get taskScopeSurvey => 'Encuesta';

  @override
  String get goNoGoTaskTitle => 'Go/No-Go';

  @override
  String get goNoGoTaskDescription => 'Tarea de inhibición de respuesta';

  @override
  String get surveyTaskTitle => 'Encuesta';

  @override
  String get surveyTaskDescription => 'Encuesta EMA de ejemplo';

  @override
  String get languageToolTip => 'Seleccionar idioma';

  @override
  String get langOptionEn => 'English';

  @override
  String get langOptionEs => 'Español';
}

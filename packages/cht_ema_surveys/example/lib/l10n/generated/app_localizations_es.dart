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
  String get homeMessage => 'Pantalla de inicio';

  @override
  String get languageToolTip => 'Seleccionar idioma';

  @override
  String get langOptionEn => 'English';

  @override
  String get langOptionEs => 'Español';

  @override
  String get dashboardTodayLabel => 'Hoy';

  @override
  String get dashboardPlannedActivities => 'Actividades planificadas';

  @override
  String get dashboardMorning => 'Mañana';

  @override
  String get dashboardAfternoon => 'Tarde';

  @override
  String get dashboardEvening => 'Noche';

  @override
  String get dashboardActivityERQ =>
      'Completar encuesta de regulación emocional';

  @override
  String get dashboardActivityIPAQ => 'Completar encuesta de actividad física';

  @override
  String get dashboardActivityGoNoGo => 'Completar tarea Go/No-Go';

  @override
  String get dashboardActivityNBack => 'Completar tarea N-back';

  @override
  String get dashboardTabOverview => 'Resumen';

  @override
  String get dashboardTabSurveys => 'Encuestas';

  @override
  String get dashboardTabTasks => 'Tareas';

  @override
  String get dashboardTabSettings => 'Ajustes';
}

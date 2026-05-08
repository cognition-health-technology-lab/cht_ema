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
  String get studyInformationPageTitle => 'Información del estudio';

  @override
  String get studyInformationInfoTooltip => 'Información del estudio';

  @override
  String get studyInformationContinueButton => 'Continuar';

  @override
  String get studyInformationStudyTitleLabel => 'Título del estudio';

  @override
  String get studyInformationStudyTitleValue => 'mHealthGoals';

  @override
  String get studyInformationDescriptionLabel => 'Descripción del estudio';

  @override
  String get studyInformationDescriptionValue =>
      'Este estudio invita a los participantes a responder encuestas breves sobre sus experiencias diarias para que el equipo de investigación comprenda mejor la participación en contextos cotidianos.';

  @override
  String get studyInformationResearchTeamLabel =>
      'Investigador principal / equipo de investigación';

  @override
  String get studyInformationResearchTeamValue =>
      'Dr. Mario Bermonti-Pérez, PhD\nCognition, Health, and Technology Lab';

  @override
  String get studyInformationTimeCommitmentLabel =>
      'Duración del estudio y tiempo requerido';

  @override
  String get studyInformationTimeCommitmentValue =>
      'Los participantes completarán cuestionarios breves y tareas cognitivas durante el período del estudio. Cada cuestionario o tarea debería tomar solo unos minutos.';

  @override
  String get studyInformationContactLabel => 'Información de contacto';

  @override
  String get studyInformationContactValue => 'Email: chtlaboratory@psm.edu';
}

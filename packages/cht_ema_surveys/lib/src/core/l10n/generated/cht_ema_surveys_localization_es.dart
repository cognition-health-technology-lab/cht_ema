// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'cht_ema_surveys_localization.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class ChtEmaSurveysLocalizationEs extends ChtEmaSurveysLocalization {
  ChtEmaSurveysLocalizationEs([String locale = 'es']) : super(locale);

  @override
  String get itemTitle => 'Título del ítem';

  @override
  String get ipaqInstructionsTitle => 'Actividad Física';

  @override
  String get ipaqInstructionsBody =>
      'A continuación responderás algunas preguntas sobre la clase de actividad física que realizaste hoy.\n\nPor favor, responde a cada pregunta aun si no te consideras una persona activa.\n\nPor favor, piensa en aquellas actividades que haces como parte del trabajo, en el jardín y en la casa, para ir de un sitio a otro, y en tu tiempo libre de descanso, ejercicio o deporte.';

  @override
  String get ipaqVigorousQuestionTitle =>
      '¿Cuánto tiempo dedicaste hoy a actividad física vigorosa?\n\nConsidera vigorosa cuando no puedes decir más de unas pocas palabras sin parar a respirar, como al trotar o nadar rápido.';

  @override
  String get ipaqModerateQuestionTitle =>
      '¿Cuánto tiempo dedicaste hoy a realizar actividades físicas moderadas, como caminar rápido, bailar o andar en bicicleta a ritmo suave?';

  @override
  String get ipaqWalkQuestionTitle => '¿Cuánto tiempo dedicaste hoy a caminar?';

  @override
  String get ipaqSeatedQuestionTitle => '¿Cuánto tiempo estuviste hoy sentado?';

  @override
  String get backButtonLabel => 'Atrás';

  @override
  String get nextButtonLabel => 'Continuar';

  @override
  String get questionLabel => 'Pregunta';

  @override
  String get hoursLabel => 'Horas';

  @override
  String get minutesLabel => 'Minutos';

  @override
  String get erqEmaInstructionsTitle => 'Regulación emocional';

  @override
  String get erqEmaInstructionsBody =>
      'A continuación verás algunas frases sobre cómo manejaste esta emoción.\n\nIndica qué tanto cada frase describe lo que hiciste, usando la siguiente escala:\n1 = muy en desacuerdo, 4 = ni de acuerdo ni en desacuerdo, 7 = muy de acuerdo.';

  @override
  String get erqEmaCr1 =>
      'Controlé esta emoción cambiando la manera en que estaba pensando sobre la situación en la que me encontraba.';

  @override
  String get erqEmaCr2 =>
      'Cuando quería sentir menos de esta emoción, cambié en qué estaba pensando.';

  @override
  String get erqEmaCr3 =>
      'Cuando quería sentir menos de esta emoción, cambié la manera en que estaba pensando sobre la situación.';

  @override
  String get erqEmaSup1 => 'Controlé esta emoción al no expresarla.';

  @override
  String get erqEmaSup2 => 'Me guardé esta emoción para mí.';

  @override
  String get erqEmaSup3 =>
      'Cuando sentí esta emoción, me aseguré de no expresarla.';
}

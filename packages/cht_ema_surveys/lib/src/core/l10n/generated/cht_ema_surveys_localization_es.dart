// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'cht_ema_surveys_localization.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class ChtEmaSurveysLocalizationEs extends ChtEmaSurveysLocalization {
  ChtEmaSurveysLocalizationEs([String locale = 'es']) : super(locale);

  @override
  String get erqInstructionsTitle => 'Instrucciones';

  @override
  String get erqInstructionsBody =>
      'Describe cómo regulaste y manejaste tus emociones desde la última encuesta seleccionando la opción que mejor describe cuán de acuerdo estás.';

  @override
  String get erqCr1 =>
      'Desde la última encuesta, cuando quería sentir más una emoción positiva (como alegría o diversión), cambié mi manera de pensar sobre la situación.';

  @override
  String get erqCr2 =>
      'Desde la última encuesta, controlé mis emociones cambiando mi manera de pensar sobre la situación en la que me encontraba.';

  @override
  String get erqCr3 =>
      'Desde la última encuesta, cuando quería sentir menos una emoción negativa (como tristeza o enojo), cambié mi manera de pensar sobre la situación.';

  @override
  String get erqSup1 =>
      'Desde la última encuesta, controlé mis emociones no expresándolas.';

  @override
  String get erqSup2 =>
      'Desde la última encuesta, guardé mis emociones para mí mismo/a.';

  @override
  String get erqSup3 =>
      'Desde la última encuesta, cuando sentí emociones negativas, me aseguré de no expresarlas.';

  @override
  String get likertStronglyDisagree => 'Totalmente en desacuerdo';

  @override
  String get likertDisagree => 'En desacuerdo';

  @override
  String get likertSlightlyDisagree => 'Algo en desacuerdo';

  @override
  String get likertNeutral => 'Neutral';

  @override
  String get likertSlightlyAgree => 'Algo de acuerdo';

  @override
  String get likertAgree => 'De acuerdo';

  @override
  String get likertStronglyAgree => 'Totalmente de acuerdo';
}

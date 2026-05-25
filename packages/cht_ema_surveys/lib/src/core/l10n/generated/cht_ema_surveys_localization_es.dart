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
  String get erqEmaInstructionsTitle => 'Instrucciones';

  @override
  String get erqEmaInstructionsBody =>
      'Las siguientes afirmaciones se refieren a cómo controló sus emociones durante el último día. Indique en qué medida está de acuerdo con cada afirmación.';

  @override
  String get erqEmaCr1 =>
      'Cuando quería sentir más una emoción positiva (como alegría o diversión), cambié mi manera de pensar sobre la situación.';

  @override
  String get erqEmaCr2 =>
      'Controlé mis emociones cambiando mi manera de pensar sobre la situación en la que me encontraba.';

  @override
  String get erqEmaCr3 =>
      'Cuando quería sentir menos una emoción negativa (como tristeza o enojo), cambié mi manera de pensar sobre la situación.';

  @override
  String get erqEmaSup1 => 'Controlé mis emociones no expresándolas.';

  @override
  String get erqEmaSup2 => 'Guardé mis emociones para mí mismo/a.';

  @override
  String get erqEmaSup3 =>
      'Cuando sentí emociones negativas, me aseguré de no expresarlas.';

  @override
  String get likertStronglyDisagree => 'Muy en desacuerdo';

  @override
  String get likertDisagree => 'En desacuerdo';

  @override
  String get likertSlightlyDisagree => 'Algo en desacuerdo';

  @override
  String get likertNeutral => 'Ni de acuerdo ni en desacuerdo';

  @override
  String get likertSlightlyAgree => 'Algo de acuerdo';

  @override
  String get likertAgree => 'De acuerdo';

  @override
  String get likertStronglyAgree => 'Muy de acuerdo';

  @override
  String get erqEmaSurveyButtonLabel => 'Cuestionario de Regulación Emocional';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'cht_cognition_localization.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class ChtCognitionLocalizationEs extends ChtCognitionLocalization {
  ChtCognitionLocalizationEs([String locale = 'es']) : super(locale);

  @override
  String get placeholderText => 'Tarea cognitiva de ejemplo';

  @override
  String get continueButton => 'Continuar';

  @override
  String get goNoGoInstructions => 'Instrucciones para tarea Go/No-Go';

  @override
  String get restMessageMain => 'Descansa';

  @override
  String get endMessageMain => '¡Listo!';
}

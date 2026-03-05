// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'cht_cognition_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ChtCognitionLocalizationEn extends ChtCognitionLocalization {
  ChtCognitionLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get placeholderText => 'Placeholder cognitive task';

  @override
  String get goNoGoInstructions => 'Go/No-Go Task Instructions';

  @override
  String get restMessageMain => 'Rest';

  @override
  String get restMessageButton => 'Continue';

  @override
  String get endMessageMain => 'Done!';

  @override
  String get endMessageButton => 'Continue';
}

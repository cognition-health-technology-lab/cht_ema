// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'cht_ema_surveys_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ChtEmaSurveysLocalizationEn extends ChtEmaSurveysLocalization {
  ChtEmaSurveysLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get erqInstructionsTitle => 'Instructions';

  @override
  String get erqInstructionsBody =>
      'Describe how you have regulated and managed your emotions since the last survey by selecting the option that best describes how much you agree.';

  @override
  String get erqCr1 =>
      'Since the last survey, when I wanted to feel more positive emotion (such as joy or amusement), I changed the way I was thinking about the situation.';

  @override
  String get erqCr2 =>
      'Since the last survey, I controlled my emotions by changing the way I was thinking about the situation I was in.';

  @override
  String get erqCr3 =>
      'Since the last survey, when I wanted to feel less negative emotion (such as sadness or anger), I changed the way I was thinking about the situation.';

  @override
  String get erqSup1 =>
      'Since the last survey, I controlled my emotions by not expressing them.';

  @override
  String get erqSup2 => 'Since the last survey, I kept my emotions to myself.';

  @override
  String get erqSup3 =>
      'Since the last survey, when I felt negative emotions, I made sure not to express them.';

  @override
  String get likertStronglyDisagree => 'Strongly disagree';

  @override
  String get likertDisagree => 'Disagree';

  @override
  String get likertSlightlyDisagree => 'Slightly disagree';

  @override
  String get likertNeutral => 'Neutral';

  @override
  String get likertSlightlyAgree => 'Slightly agree';

  @override
  String get likertAgree => 'Agree';

  @override
  String get likertStronglyAgree => 'Strongly agree';
}

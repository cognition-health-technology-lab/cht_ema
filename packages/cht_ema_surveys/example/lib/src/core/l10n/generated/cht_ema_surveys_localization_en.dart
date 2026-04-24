// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'cht_ema_surveys_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ChtEmaSurveysLocalizationEn extends ChtEmaSurveysLocalization {
  ChtEmaSurveysLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get itemTitle => 'Title for survey item';

  @override
  String get erqEmaInstructionsTitle => 'Emotions';

  @override
  String get erqEmaInstructionsBody =>
      'The following statements concern how you controlled your emotions during the last day. Please indicate the extent to which you agree with each statement.';

  @override
  String get erqEmaCr1 =>
      'When I wanted to feel more positive emotion (such as joy or amusement), I changed the way I was thinking about the situation.';

  @override
  String get erqEmaCr2 => 'I kept my emotions to myself.';

  @override
  String get erqEmaCr3 =>
      'When I wanted to feel less negative emotion (such as sadness or anger), I changed the way I was thinking about the situation.';

  @override
  String get erqEmaSup1 => 'I controlled my emotions by not expressing them.';

  @override
  String get erqEmaSup2 =>
      'I controlled my emotions by changing the way I was thinking about the situation I was in.';

  @override
  String get erqEmaSup3 =>
      'When I felt negative emotions, I made sure not to express them.';

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

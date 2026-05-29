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
  String get ipaqInstructionsTitle => 'Physical Activity';

  @override
  String get ipaqInstructionsBody =>
      'Next, you will answer some questions about the kinds of physical activity you did today.\n\nPlease answer each question even if you do not think of yourself as a physically active person.\n\nPlease think about activities you do as part of your work, in the garden and at home, to get from one place to another, and in your free time for rest, exercise, or sports.';

  @override
  String get ipaqVigorousQuestionTitle =>
      'How much time did you spend today doing vigorous physical activity?\n\nConsider it vigorous when you cannot say more than a few words without stopping to breathe, such as when jogging or swimming fast.';

  @override
  String get ipaqModerateQuestionTitle =>
      'How much time did you spend today doing moderate physical activities, such as brisk walking, dancing, or cycling at an easy pace?';

  @override
  String get ipaqWalkQuestionTitle =>
      'How much time did you spend today walking?';

  @override
  String get ipaqSeatedQuestionTitle =>
      'How much time did you spend today sitting?';

  @override
  String get backButtonLabel => 'Back';

  @override
  String get nextButtonLabel => 'Continue';

  @override
  String get questionLabel => 'Question';

  @override
  String get hoursLabel => 'Hours';

  @override
  String get minutesLabel => 'Minutes';

  @override
  String get erqEmaInstructionsTitle => 'Emotion Regulation';

  @override
  String get erqEmaInstructionsBody =>
      'Below are some statements about how you handled this emotion.\n\nPlease rate how much each statement describes what you did, using the following scale:\n1 = strongly disagree, 4 = neutral, 7 = strongly agree.';

  @override
  String get erqEmaCr1 =>
      'I controlled this emotion by changing the way I was thinking about the situation I was in.';

  @override
  String get erqEmaCr2 =>
      'When I wanted to feel less of this emotion, I changed what I was thinking about.';

  @override
  String get erqEmaCr3 =>
      'When I wanted to feel less of this emotion, I changed the way I was thinking about the situation.';

  @override
  String get erqEmaSup1 => 'I controlled this emotion by not expressing it.';

  @override
  String get erqEmaSup2 => 'I kept this emotion to myself.';

  @override
  String get erqEmaSup3 =>
      'When I felt this emotion, I made sure not to express it.';
}

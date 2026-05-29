import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'cht_ema_surveys_localization_en.dart';
import 'cht_ema_surveys_localization_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ChtEmaSurveysLocalization
/// returned by `ChtEmaSurveysLocalization.of(context)`.
///
/// Applications need to include `ChtEmaSurveysLocalization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/cht_ema_surveys_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ChtEmaSurveysLocalization.localizationsDelegates,
///   supportedLocales: ChtEmaSurveysLocalization.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the ChtEmaSurveysLocalization.supportedLocales
/// property.
abstract class ChtEmaSurveysLocalization {
  ChtEmaSurveysLocalization(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ChtEmaSurveysLocalization of(BuildContext context) {
    return Localizations.of<ChtEmaSurveysLocalization>(
      context,
      ChtEmaSurveysLocalization,
    )!;
  }

  static const LocalizationsDelegate<ChtEmaSurveysLocalization> delegate =
      _ChtEmaSurveysLocalizationDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
  ];

  /// Title for the EMA survey item
  ///
  /// In en, this message translates to:
  /// **'Title for survey item'**
  String get itemTitle;

  /// IPAQ intro step title
  ///
  /// In en, this message translates to:
  /// **'Physical Activity'**
  String get ipaqInstructionsTitle;

  /// IPAQ introductory explanatory text
  ///
  /// In en, this message translates to:
  /// **'Next, you will answer some questions about the kinds of physical activity you did today.\n\nPlease answer each question even if you do not think of yourself as a physically active person.\n\nPlease think about activities you do as part of your work, in the garden and at home, to get from one place to another, and in your free time for rest, exercise, or sports.'**
  String get ipaqInstructionsBody;

  /// IPAQ vigorous activity question
  ///
  /// In en, this message translates to:
  /// **'How much time did you spend today doing vigorous physical activity?\n\nConsider it vigorous when you cannot say more than a few words without stopping to breathe, such as when jogging or swimming fast.'**
  String get ipaqVigorousQuestionTitle;

  /// IPAQ moderate activity question
  ///
  /// In en, this message translates to:
  /// **'How much time did you spend today doing moderate physical activities, such as brisk walking, dancing, or cycling at an easy pace?'**
  String get ipaqModerateQuestionTitle;

  /// IPAQ walking question
  ///
  /// In en, this message translates to:
  /// **'How much time did you spend today walking?'**
  String get ipaqWalkQuestionTitle;

  /// IPAQ sitting question
  ///
  /// In en, this message translates to:
  /// **'How much time did you spend today sitting?'**
  String get ipaqSeatedQuestionTitle;

  /// Back button label in the survey
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get backButtonLabel;

  /// Next/continue button label in the survey
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get nextButtonLabel;

  /// Prefix used before the question index
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get questionLabel;

  /// Label for hours in duration picker
  ///
  /// In en, this message translates to:
  /// **'Hours'**
  String get hoursLabel;

  /// Label for minutes in duration picker
  ///
  /// In en, this message translates to:
  /// **'Minutes'**
  String get minutesLabel;

  /// Title for the ERQ EMA block
  ///
  /// In en, this message translates to:
  /// **'Emotion Regulation'**
  String get erqEmaInstructionsTitle;

  /// Instructions for ERQ EMA items and 1–7 scale description
  ///
  /// In en, this message translates to:
  /// **'Below are some statements about how you handled this emotion.\n\nPlease rate how much each statement describes what you did, using the following scale:\n1 = strongly disagree, 4 = neutral, 7 = strongly agree.'**
  String get erqEmaInstructionsBody;

  /// ERQ EMA cognitive reappraisal item 1
  ///
  /// In en, this message translates to:
  /// **'I controlled this emotion by changing the way I was thinking about the situation I was in.'**
  String get erqEmaCr1;

  /// ERQ EMA cognitive reappraisal item 2
  ///
  /// In en, this message translates to:
  /// **'When I wanted to feel less of this emotion, I changed what I was thinking about.'**
  String get erqEmaCr2;

  /// ERQ EMA cognitive reappraisal item 3
  ///
  /// In en, this message translates to:
  /// **'When I wanted to feel less of this emotion, I changed the way I was thinking about the situation.'**
  String get erqEmaCr3;

  /// ERQ EMA expressive suppression item 1
  ///
  /// In en, this message translates to:
  /// **'I controlled this emotion by not expressing it.'**
  String get erqEmaSup1;

  /// ERQ EMA expressive suppression item 2
  ///
  /// In en, this message translates to:
  /// **'I kept this emotion to myself.'**
  String get erqEmaSup2;

  /// ERQ EMA expressive suppression item 3
  ///
  /// In en, this message translates to:
  /// **'When I felt this emotion, I made sure not to express it.'**
  String get erqEmaSup3;
}

class _ChtEmaSurveysLocalizationDelegate
    extends LocalizationsDelegate<ChtEmaSurveysLocalization> {
  const _ChtEmaSurveysLocalizationDelegate();

  @override
  Future<ChtEmaSurveysLocalization> load(Locale locale) {
    return SynchronousFuture<ChtEmaSurveysLocalization>(
      lookupChtEmaSurveysLocalization(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_ChtEmaSurveysLocalizationDelegate old) => false;
}

ChtEmaSurveysLocalization lookupChtEmaSurveysLocalization(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return ChtEmaSurveysLocalizationEn();
    case 'es':
      return ChtEmaSurveysLocalizationEs();
  }

  throw FlutterError(
    'ChtEmaSurveysLocalization.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

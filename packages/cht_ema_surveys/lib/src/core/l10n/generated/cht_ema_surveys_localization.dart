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

  /// ERQ instructions title
  ///
  /// In en, this message translates to:
  /// **'Instructions'**
  String get erqInstructionsTitle;

  /// ERQ instructions body
  ///
  /// In en, this message translates to:
  /// **'Describe how you have regulated and managed your emotions since the last survey by selecting the option that best describes how much you agree.'**
  String get erqInstructionsBody;

  /// ERQ cognitive reappraisal item 1
  ///
  /// In en, this message translates to:
  /// **'Since the last survey, when I wanted to feel more positive emotion (such as joy or amusement), I changed the way I was thinking about the situation.'**
  String get erqCr1;

  /// ERQ cognitive reappraisal item 2
  ///
  /// In en, this message translates to:
  /// **'Since the last survey, I controlled my emotions by changing the way I was thinking about the situation I was in.'**
  String get erqCr2;

  /// ERQ cognitive reappraisal item 3
  ///
  /// In en, this message translates to:
  /// **'Since the last survey, when I wanted to feel less negative emotion (such as sadness or anger), I changed the way I was thinking about the situation.'**
  String get erqCr3;

  /// ERQ expressive suppression item 1
  ///
  /// In en, this message translates to:
  /// **'Since the last survey, I controlled my emotions by not expressing them.'**
  String get erqSup1;

  /// ERQ expressive suppression item 2
  ///
  /// In en, this message translates to:
  /// **'Since the last survey, I kept my emotions to myself.'**
  String get erqSup2;

  /// ERQ expressive suppression item 3
  ///
  /// In en, this message translates to:
  /// **'Since the last survey, when I felt negative emotions, I made sure not to express them.'**
  String get erqSup3;

  /// Likert label for 1 on a 1-7 agreement scale
  ///
  /// In en, this message translates to:
  /// **'Strongly disagree'**
  String get likertStronglyDisagree;

  /// Likert label for 2 on a 1-7 agreement scale
  ///
  /// In en, this message translates to:
  /// **'Disagree'**
  String get likertDisagree;

  /// Likert label for 3 on a 1-7 agreement scale
  ///
  /// In en, this message translates to:
  /// **'Slightly disagree'**
  String get likertSlightlyDisagree;

  /// Likert label for 4 on a 1-7 agreement scale
  ///
  /// In en, this message translates to:
  /// **'Neutral'**
  String get likertNeutral;

  /// Likert label for 5 on a 1-7 agreement scale
  ///
  /// In en, this message translates to:
  /// **'Slightly agree'**
  String get likertSlightlyAgree;

  /// Likert label for 6 on a 1-7 agreement scale
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get likertAgree;

  /// Likert label for 7 on a 1-7 agreement scale
  ///
  /// In en, this message translates to:
  /// **'Strongly agree'**
  String get likertStronglyAgree;
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

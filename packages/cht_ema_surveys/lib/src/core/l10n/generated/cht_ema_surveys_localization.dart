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

  /// Sociodemographic survey - Q1 age
  ///
  /// In en, this message translates to:
  /// **'What is your age?'**
  String get ageQuestion;

  /// Sociodemographic survey - Q2 biological sex
  ///
  /// In en, this message translates to:
  /// **'What biological sex were you assigned at birth?'**
  String get biologicalSexQuestion;

  /// No description provided for @sexMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get sexMale;

  /// No description provided for @sexFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get sexFemale;

  /// No description provided for @sexIntersexual.
  ///
  /// In en, this message translates to:
  /// **'Intersexual'**
  String get sexIntersexual;

  /// No description provided for @sexOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get sexOther;

  /// No description provided for @sexOtherSpecify.
  ///
  /// In en, this message translates to:
  /// **'Please specify your biological sex'**
  String get sexOtherSpecify;

  /// Sociodemographic survey - Q3 gender identity
  ///
  /// In en, this message translates to:
  /// **'Gender:'**
  String get genderQuestion;

  /// No description provided for @genderMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get genderMale;

  /// No description provided for @genderFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get genderFemale;

  /// No description provided for @genderNonBinary.
  ///
  /// In en, this message translates to:
  /// **'Non-binary'**
  String get genderNonBinary;

  /// No description provided for @genderTransgender.
  ///
  /// In en, this message translates to:
  /// **'Transgender'**
  String get genderTransgender;

  /// No description provided for @genderOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get genderOther;

  /// No description provided for @genderOtherSpecify.
  ///
  /// In en, this message translates to:
  /// **'Please specify your gender'**
  String get genderOtherSpecify;

  /// Sociodemographic survey - Q4 primary language
  ///
  /// In en, this message translates to:
  /// **'Primary Language:'**
  String get primaryLanguageQuestion;

  /// No description provided for @languageSpanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get languageSpanish;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// Sociodemographic survey - Q5 household income
  ///
  /// In en, this message translates to:
  /// **'What is your household income?'**
  String get householdIncomeQuestion;

  /// No description provided for @incomeLessThan10k.
  ///
  /// In en, this message translates to:
  /// **'Less than \$10,000'**
  String get incomeLessThan10k;

  /// No description provided for @income10kTo24k.
  ///
  /// In en, this message translates to:
  /// **'\$10,000 - \$24,999'**
  String get income10kTo24k;

  /// No description provided for @income25kTo34k.
  ///
  /// In en, this message translates to:
  /// **'\$25,000 - \$34,999'**
  String get income25kTo34k;

  /// No description provided for @income35kTo49k.
  ///
  /// In en, this message translates to:
  /// **'\$35,000 - \$49,999'**
  String get income35kTo49k;

  /// No description provided for @income50kTo74k.
  ///
  /// In en, this message translates to:
  /// **'\$50,000 - \$74,999'**
  String get income50kTo74k;

  /// No description provided for @income75kTo99k.
  ///
  /// In en, this message translates to:
  /// **'\$75,000 - \$99,999'**
  String get income75kTo99k;

  /// No description provided for @income100kTo149k.
  ///
  /// In en, this message translates to:
  /// **'\$100,000 - \$149,999'**
  String get income100kTo149k;

  /// No description provided for @income150kTo199k.
  ///
  /// In en, this message translates to:
  /// **'\$150,000 - \$199,999'**
  String get income150kTo199k;

  /// No description provided for @income200kOrMore.
  ///
  /// In en, this message translates to:
  /// **'\$200,000 or more'**
  String get income200kOrMore;

  /// Sociodemographic survey - Q6 marital status
  ///
  /// In en, this message translates to:
  /// **'What is your current marital status?'**
  String get maritalStatusQuestion;

  /// No description provided for @maritalMarried.
  ///
  /// In en, this message translates to:
  /// **'Married'**
  String get maritalMarried;

  /// No description provided for @maritalDivorced.
  ///
  /// In en, this message translates to:
  /// **'Divorced'**
  String get maritalDivorced;

  /// No description provided for @maritalWidowed.
  ///
  /// In en, this message translates to:
  /// **'Widow/widower'**
  String get maritalWidowed;

  /// No description provided for @maritalSeparated.
  ///
  /// In en, this message translates to:
  /// **'Separated'**
  String get maritalSeparated;

  /// No description provided for @maritalNeverMarried.
  ///
  /// In en, this message translates to:
  /// **'I\'ve never been married'**
  String get maritalNeverMarried;

  /// No description provided for @maritalCohabiting.
  ///
  /// In en, this message translates to:
  /// **'Live with a partner without being married'**
  String get maritalCohabiting;

  /// Sociodemographic survey - Q7 education level
  ///
  /// In en, this message translates to:
  /// **'What is the highest degree or level of education you have completed?'**
  String get educationLevelQuestion;

  /// No description provided for @eduHighSchool.
  ///
  /// In en, this message translates to:
  /// **'Fourth year of high school'**
  String get eduHighSchool;

  /// No description provided for @eduTechnical.
  ///
  /// In en, this message translates to:
  /// **'Technical grade'**
  String get eduTechnical;

  /// No description provided for @eduAssociate.
  ///
  /// In en, this message translates to:
  /// **'Associate degree'**
  String get eduAssociate;

  /// No description provided for @eduBachelor.
  ///
  /// In en, this message translates to:
  /// **'Bachelor\'s degree'**
  String get eduBachelor;

  /// No description provided for @eduMasters.
  ///
  /// In en, this message translates to:
  /// **'Master\'s degree'**
  String get eduMasters;

  /// No description provided for @eduDoctorate.
  ///
  /// In en, this message translates to:
  /// **'Doctorate'**
  String get eduDoctorate;

  /// No description provided for @eduPostDoctorate.
  ///
  /// In en, this message translates to:
  /// **'Post-doctorate'**
  String get eduPostDoctorate;

  /// No description provided for @eduOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get eduOther;

  /// No description provided for @educationOtherSpecify.
  ///
  /// In en, this message translates to:
  /// **'Please specify your education level'**
  String get educationOtherSpecify;

  /// Sociodemographic survey - Q8 currently studying
  ///
  /// In en, this message translates to:
  /// **'Are you currently studying?'**
  String get currentlyStudyingQuestion;

  /// Sociodemographic survey - Q8b current academic level (conditional)
  ///
  /// In en, this message translates to:
  /// **'Current academic level:'**
  String get currentAcademicLevelQuestion;

  /// No description provided for @academicLevelOtherSpecify.
  ///
  /// In en, this message translates to:
  /// **'Please specify your current academic level'**
  String get academicLevelOtherSpecify;

  /// Sociodemographic survey - Q9 currently working
  ///
  /// In en, this message translates to:
  /// **'Do you currently work?'**
  String get currentlyWorkingQuestion;

  /// Sociodemographic survey - Q9b job type (conditional)
  ///
  /// In en, this message translates to:
  /// **'Please specify your job type'**
  String get jobTypeQuestion;

  /// No description provided for @jobTypeHint.
  ///
  /// In en, this message translates to:
  /// **'Describe your job or occupation'**
  String get jobTypeHint;

  /// No description provided for @answerYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get answerYes;

  /// No description provided for @answerNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get answerNo;

  /// No description provided for @specifyHint.
  ///
  /// In en, this message translates to:
  /// **'Specify...'**
  String get specifyHint;

  /// No description provided for @completionTitle.
  ///
  /// In en, this message translates to:
  /// **'Survey Complete'**
  String get completionTitle;

  /// No description provided for @completionText.
  ///
  /// In en, this message translates to:
  /// **'Thank you for completing the sociodemographic survey.'**
  String get completionText;
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

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

  /// Sociodemographic survey - Q2 biological sex option: male
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get sexMale;

  /// Sociodemographic survey - Q2 biological sex option: female
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get sexFemale;

  /// Sociodemographic survey - Q2 biological sex option: intersexual
  ///
  /// In en, this message translates to:
  /// **'Intersexual'**
  String get sexIntersexual;

  /// Sociodemographic survey - Q2 biological sex option: other
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get sexOther;

  /// Sociodemographic survey - Q2b biological sex other specify prompt
  ///
  /// In en, this message translates to:
  /// **'Please specify your biological sex'**
  String get sexOtherSpecify;

  /// Sociodemographic survey - Q3 gender identity
  ///
  /// In en, this message translates to:
  /// **'Gender:'**
  String get genderQuestion;

  /// Sociodemographic survey - Q3 gender identity option: male
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get genderMale;

  /// Sociodemographic survey - Q3 gender identity option: female
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get genderFemale;

  /// Sociodemographic survey - Q3 gender identity option: non-binary
  ///
  /// In en, this message translates to:
  /// **'Non-binary'**
  String get genderNonBinary;

  /// Sociodemographic survey - Q3 gender identity option: transgender
  ///
  /// In en, this message translates to:
  /// **'Transgender'**
  String get genderTransgender;

  /// Sociodemographic survey - Q3 gender identity option: other
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get genderOther;

  /// Sociodemographic survey - Q3b gender identity other specify prompt
  ///
  /// In en, this message translates to:
  /// **'Please specify your gender'**
  String get genderOtherSpecify;

  /// Sociodemographic survey - Q4 primary language
  ///
  /// In en, this message translates to:
  /// **'Primary Language:'**
  String get primaryLanguageQuestion;

  /// Sociodemographic survey - Q4 primary language option: Spanish
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get languageSpanish;

  /// Sociodemographic survey - Q4 primary language option: English
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// Sociodemographic survey - Q5 household income
  ///
  /// In en, this message translates to:
  /// **'What is your household income?'**
  String get householdIncomeQuestion;

  /// Sociodemographic survey - Q5 household income option: less than $10,000
  ///
  /// In en, this message translates to:
  /// **'Less than \$10,000'**
  String get incomeLessThan10k;

  /// Sociodemographic survey - Q5 household income option: $10,000 to $24,999
  ///
  /// In en, this message translates to:
  /// **'\$10,000 - \$24,999'**
  String get income10kTo24k;

  /// Sociodemographic survey - Q5 household income option: $25,000 to $34,999
  ///
  /// In en, this message translates to:
  /// **'\$25,000 - \$34,999'**
  String get income25kTo34k;

  /// Sociodemographic survey - Q5 household income option: $35,000 to $49,999
  ///
  /// In en, this message translates to:
  /// **'\$35,000 - \$49,999'**
  String get income35kTo49k;

  /// Sociodemographic survey - Q5 household income option: $50,000 to $74,999
  ///
  /// In en, this message translates to:
  /// **'\$50,000 - \$74,999'**
  String get income50kTo74k;

  /// Sociodemographic survey - Q5 household income option: $75,000 to $99,999
  ///
  /// In en, this message translates to:
  /// **'\$75,000 - \$99,999'**
  String get income75kTo99k;

  /// Sociodemographic survey - Q5 household income option: $100,000 to $149,999
  ///
  /// In en, this message translates to:
  /// **'\$100,000 - \$149,999'**
  String get income100kTo149k;

  /// Sociodemographic survey - Q5 household income option: $150,000 to $199,999
  ///
  /// In en, this message translates to:
  /// **'\$150,000 - \$199,999'**
  String get income150kTo199k;

  /// Sociodemographic survey - Q5 household income option: $200,000 or more
  ///
  /// In en, this message translates to:
  /// **'\$200,000 or more'**
  String get income200kOrMore;

  /// Sociodemographic survey - Q6 marital status
  ///
  /// In en, this message translates to:
  /// **'What is your current marital status?'**
  String get maritalStatusQuestion;

  /// Sociodemographic survey - Q6 marital status option: married
  ///
  /// In en, this message translates to:
  /// **'Married'**
  String get maritalMarried;

  /// Sociodemographic survey - Q6 marital status option: divorced
  ///
  /// In en, this message translates to:
  /// **'Divorced'**
  String get maritalDivorced;

  /// Sociodemographic survey - Q6 marital status option: widow or widower
  ///
  /// In en, this message translates to:
  /// **'Widow/widower'**
  String get maritalWidowed;

  /// Sociodemographic survey - Q6 marital status option: separated
  ///
  /// In en, this message translates to:
  /// **'Separated'**
  String get maritalSeparated;

  /// Sociodemographic survey - Q6 marital status option: never married
  ///
  /// In en, this message translates to:
  /// **'I\'ve never been married'**
  String get maritalNeverMarried;

  /// Sociodemographic survey - Q6 marital status option: cohabiting
  ///
  /// In en, this message translates to:
  /// **'Live with a partner without being married'**
  String get maritalCohabiting;

  /// Sociodemographic survey - Q7 education level
  ///
  /// In en, this message translates to:
  /// **'What is the highest degree or level of education you have completed?'**
  String get educationLevelQuestion;

  /// Sociodemographic survey - Q7 education level option: fourth year of high school
  ///
  /// In en, this message translates to:
  /// **'Fourth year of high school'**
  String get eduHighSchool;

  /// Sociodemographic survey - Q7 education level option: technical grade
  ///
  /// In en, this message translates to:
  /// **'Technical grade'**
  String get eduTechnical;

  /// Sociodemographic survey - Q7 education level option: associate degree
  ///
  /// In en, this message translates to:
  /// **'Associate degree'**
  String get eduAssociate;

  /// Sociodemographic survey - Q7 education level option: bachelor's degree
  ///
  /// In en, this message translates to:
  /// **'Bachelor\'s degree'**
  String get eduBachelor;

  /// Sociodemographic survey - Q7 education level option: master's degree
  ///
  /// In en, this message translates to:
  /// **'Master\'s degree'**
  String get eduMasters;

  /// Sociodemographic survey - Q7 education level option: doctorate
  ///
  /// In en, this message translates to:
  /// **'Doctorate'**
  String get eduDoctorate;

  /// Sociodemographic survey - Q7 education level option: post-doctorate
  ///
  /// In en, this message translates to:
  /// **'Post-doctorate'**
  String get eduPostDoctorate;

  /// Sociodemographic survey - Q7 education level option: other
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get eduOther;

  /// Sociodemographic survey - Q7b education level other specify prompt
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

  /// Sociodemographic survey - Q8b current academic level other specify prompt
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

  /// Sociodemographic survey - Q9b job type text field hint
  ///
  /// In en, this message translates to:
  /// **'Describe your job or occupation'**
  String get jobTypeHint;

  /// Shared yes answer option
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get answerYes;

  /// Shared no answer option
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get answerNo;

  /// Shared text field hint for specify prompts
  ///
  /// In en, this message translates to:
  /// **'Specify...'**
  String get specifyHint;

  /// Sociodemographic survey completion step title
  ///
  /// In en, this message translates to:
  /// **'Survey Complete'**
  String get completionTitle;

  /// Sociodemographic survey completion step text
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

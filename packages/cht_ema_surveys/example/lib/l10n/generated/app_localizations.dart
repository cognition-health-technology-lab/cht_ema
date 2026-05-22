import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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

  /// Title for the app
  ///
  /// In en, this message translates to:
  /// **'CHT Surveys Example'**
  String get appTitle;

  /// Message displayed on the home screen
  ///
  /// In en, this message translates to:
  /// **'Chronic Health Questionnaire'**
  String get homeMessage;

  /// Tooltip for the language selection menu
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get languageToolTip;

  /// English language option
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get langOptionEn;

  /// Spanish language option
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get langOptionEs;

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

  /// Chronic health survey title
  ///
  /// In en, this message translates to:
  /// **'Health History Survey'**
  String get chSurveyTitle;

  /// Chronic health survey instructions
  ///
  /// In en, this message translates to:
  /// **'Indicate if a physical or mental health professional has diagnosed you with any of the following health conditions.'**
  String get chInstructions;

  /// Chronic health - Cat 1 gate question
  ///
  /// In en, this message translates to:
  /// **'Mental Health or Substance Abuse (e.g., depression, anxiety)'**
  String get chMentalHealthQuestion;

  /// Chronic health - Cat 1 sub-conditions question
  ///
  /// In en, this message translates to:
  /// **'Which mental health or substance use conditions have you been diagnosed with?'**
  String get chMentalHealthConditionsQuestion;

  /// No description provided for @chConditionDepression.
  ///
  /// In en, this message translates to:
  /// **'Depression'**
  String get chConditionDepression;

  /// No description provided for @chConditionAnxiety.
  ///
  /// In en, this message translates to:
  /// **'Anxiety reaction / panic disorder'**
  String get chConditionAnxiety;

  /// No description provided for @chConditionAlcohol.
  ///
  /// In en, this message translates to:
  /// **'Alcohol use disorder'**
  String get chConditionAlcohol;

  /// No description provided for @chConditionDrugs.
  ///
  /// In en, this message translates to:
  /// **'Drug use disorder'**
  String get chConditionDrugs;

  /// No description provided for @chConditionAdhd.
  ///
  /// In en, this message translates to:
  /// **'Attention deficit hyperactivity disorder (ADHD)'**
  String get chConditionAdhd;

  /// No description provided for @chConditionPtsd.
  ///
  /// In en, this message translates to:
  /// **'Post-traumatic Stress Disorder (PTSD)'**
  String get chConditionPtsd;

  /// No description provided for @chConditionAutism.
  ///
  /// In en, this message translates to:
  /// **'Autism Spectrum Disorder'**
  String get chConditionAutism;

  /// No description provided for @chConditionSchizophrenia.
  ///
  /// In en, this message translates to:
  /// **'Schizophrenia'**
  String get chConditionSchizophrenia;

  /// No description provided for @chConditionEatingDisorder.
  ///
  /// In en, this message translates to:
  /// **'Eating disorder'**
  String get chConditionEatingDisorder;

  /// No description provided for @chConditionSocialPhobia.
  ///
  /// In en, this message translates to:
  /// **'Social Phobia'**
  String get chConditionSocialPhobia;

  /// No description provided for @chConditionPersonalityDisorder.
  ///
  /// In en, this message translates to:
  /// **'Personality disorder'**
  String get chConditionPersonalityDisorder;

  /// Chronic health - Cat 2 gate question
  ///
  /// In en, this message translates to:
  /// **'Cancer'**
  String get chCancerQuestion;

  /// Chronic health - Cat 3 gate question
  ///
  /// In en, this message translates to:
  /// **'Heart and Blood (e.g., hypertension, anemia)'**
  String get chHeartBloodQuestion;

  /// Chronic health - Cat 3 sub-conditions question
  ///
  /// In en, this message translates to:
  /// **'Which heart and blood conditions have you been diagnosed with?'**
  String get chHeartBloodConditionsQuestion;

  /// No description provided for @chConditionHypertension.
  ///
  /// In en, this message translates to:
  /// **'Hypertension'**
  String get chConditionHypertension;

  /// No description provided for @chConditionHighCholesterol.
  ///
  /// In en, this message translates to:
  /// **'High cholesterol'**
  String get chConditionHighCholesterol;

  /// No description provided for @chConditionHeartAttack.
  ///
  /// In en, this message translates to:
  /// **'Heart attack'**
  String get chConditionHeartAttack;

  /// No description provided for @chConditionStroke.
  ///
  /// In en, this message translates to:
  /// **'Stroke'**
  String get chConditionStroke;

  /// No description provided for @chConditionAnemia.
  ///
  /// In en, this message translates to:
  /// **'Anemia'**
  String get chConditionAnemia;

  /// No description provided for @chConditionSickleCellDisease.
  ///
  /// In en, this message translates to:
  /// **'Sickle cell disease'**
  String get chConditionSickleCellDisease;

  /// Chronic health - Cat 4 gate question
  ///
  /// In en, this message translates to:
  /// **'Bone, Joint and Muscle (e.g., osteoporosis, arthritis)'**
  String get chBoneJointQuestion;

  /// Chronic health - Cat 4 sub-conditions question
  ///
  /// In en, this message translates to:
  /// **'Which bone, joint, and muscle conditions have you been diagnosed with?'**
  String get chBoneJointConditionsQuestion;

  /// No description provided for @chConditionOsteoporosis.
  ///
  /// In en, this message translates to:
  /// **'Osteoporosis'**
  String get chConditionOsteoporosis;

  /// No description provided for @chConditionFibromyalgia.
  ///
  /// In en, this message translates to:
  /// **'Fibromyalgia'**
  String get chConditionFibromyalgia;

  /// No description provided for @chConditionArthritis.
  ///
  /// In en, this message translates to:
  /// **'Arthritis'**
  String get chConditionArthritis;

  /// No description provided for @chConditionLupus.
  ///
  /// In en, this message translates to:
  /// **'Systemic Lupus'**
  String get chConditionLupus;

  /// Chronic health - Cat 5 gate question
  ///
  /// In en, this message translates to:
  /// **'Brain and Nervous System (e.g., dementia, migraine)'**
  String get chBrainNerveQuestion;

  /// Chronic health - Cat 5 sub-conditions question
  ///
  /// In en, this message translates to:
  /// **'Which brain and nervous system conditions have you been diagnosed with?'**
  String get chBrainNerveConditionsQuestion;

  /// No description provided for @chConditionDementia.
  ///
  /// In en, this message translates to:
  /// **'Dementia (includes Alzheimer\'s)'**
  String get chConditionDementia;

  /// No description provided for @chConditionMigraine.
  ///
  /// In en, this message translates to:
  /// **'Migraine headaches'**
  String get chConditionMigraine;

  /// No description provided for @chConditionNeuropathy.
  ///
  /// In en, this message translates to:
  /// **'Neuropathy'**
  String get chConditionNeuropathy;

  /// No description provided for @chConditionEpilepsy.
  ///
  /// In en, this message translates to:
  /// **'Epilepsy or seizure'**
  String get chConditionEpilepsy;

  /// No description provided for @chConditionInsomnia.
  ///
  /// In en, this message translates to:
  /// **'Insomnia'**
  String get chConditionInsomnia;

  /// No description provided for @chConditionParkinsons.
  ///
  /// In en, this message translates to:
  /// **'Parkinson\'s disease'**
  String get chConditionParkinsons;

  /// No description provided for @chConditionConcussion.
  ///
  /// In en, this message translates to:
  /// **'Concussions or loss of consciousness'**
  String get chConditionConcussion;

  /// No description provided for @chConditionMemoryLoss.
  ///
  /// In en, this message translates to:
  /// **'Memory loss or impairment'**
  String get chConditionMemoryLoss;

  /// No description provided for @chConditionChronicFatigue.
  ///
  /// In en, this message translates to:
  /// **'Chronic fatigue'**
  String get chConditionChronicFatigue;

  /// No description provided for @chConditionMs.
  ///
  /// In en, this message translates to:
  /// **'Multiple sclerosis (MS)'**
  String get chConditionMs;

  /// No description provided for @chConditionSpinalCord.
  ///
  /// In en, this message translates to:
  /// **'Spinal cord injury or impairment'**
  String get chConditionSpinalCord;

  /// No description provided for @chConditionTbi.
  ///
  /// In en, this message translates to:
  /// **'Traumatic brain injury (TBI)'**
  String get chConditionTbi;

  /// No description provided for @chConditionNarcolepsy.
  ///
  /// In en, this message translates to:
  /// **'Narcolepsy'**
  String get chConditionNarcolepsy;

  /// No description provided for @chConditionAls.
  ///
  /// In en, this message translates to:
  /// **'Lou Gehrig\'s disease (amyotrophic lateral sclerosis or ALS)'**
  String get chConditionAls;

  /// No description provided for @chConditionMuscularDystrophy.
  ///
  /// In en, this message translates to:
  /// **'Muscular dystrophy (MD)'**
  String get chConditionMuscularDystrophy;

  /// Chronic health - Cat 6 gate question
  ///
  /// In en, this message translates to:
  /// **'Lung Conditions (e.g., asthma)'**
  String get chLungQuestion;

  /// Chronic health - Cat 6 sub-conditions question
  ///
  /// In en, this message translates to:
  /// **'Which lung conditions have you been diagnosed with?'**
  String get chLungConditionsQuestion;

  /// No description provided for @chConditionAsthma.
  ///
  /// In en, this message translates to:
  /// **'Asthma'**
  String get chConditionAsthma;

  /// No description provided for @chConditionCopd.
  ///
  /// In en, this message translates to:
  /// **'Chronic lung disease (COPD, emphysema, or bronchitis)'**
  String get chConditionCopd;

  /// Chronic health - Cat 7 gate question
  ///
  /// In en, this message translates to:
  /// **'Hormone and Endocrine (e.g., diabetes, hypothyroidism)'**
  String get chHormoneQuestion;

  /// Chronic health - Cat 7 sub-conditions question
  ///
  /// In en, this message translates to:
  /// **'Which hormone and endocrine conditions have you been diagnosed with?'**
  String get chHormoneConditionsQuestion;

  /// No description provided for @chConditionPrediabetes.
  ///
  /// In en, this message translates to:
  /// **'Pre-diabetes'**
  String get chConditionPrediabetes;

  /// No description provided for @chConditionDiabetesType1.
  ///
  /// In en, this message translates to:
  /// **'Type I Diabetes'**
  String get chConditionDiabetesType1;

  /// No description provided for @chConditionDiabetesType2.
  ///
  /// In en, this message translates to:
  /// **'Type II Diabetes'**
  String get chConditionDiabetesType2;

  /// No description provided for @chConditionHypothyroidism.
  ///
  /// In en, this message translates to:
  /// **'Hypothyroidism'**
  String get chConditionHypothyroidism;

  /// Chronic health survey completion title
  ///
  /// In en, this message translates to:
  /// **'Survey Complete'**
  String get chCompletionTitle;

  /// Chronic health survey completion text
  ///
  /// In en, this message translates to:
  /// **'Thank you for completing the health history survey.'**
  String get chCompletionText;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

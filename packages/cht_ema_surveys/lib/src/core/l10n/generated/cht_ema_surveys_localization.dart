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

  /// Chronic health - combined instructions and Cat 1 gate question
  ///
  /// In en, this message translates to:
  /// **'Indicate if a physical or mental health professional has diagnosed you with any of the following health conditions.\n\nMental Health or Substance Abuse (e.g., depression, anxiety)'**
  String get chMentalHealthCategoryPrompt;

  /// Chronic health condition: depression
  ///
  /// In en, this message translates to:
  /// **'Depression'**
  String get chConditionDepression;

  /// Chronic health condition: anxiety reaction or panic disorder
  ///
  /// In en, this message translates to:
  /// **'Anxiety reaction / panic disorder'**
  String get chConditionAnxiety;

  /// Chronic health condition: alcohol use disorder
  ///
  /// In en, this message translates to:
  /// **'Alcohol use disorder'**
  String get chConditionAlcohol;

  /// Chronic health condition: drug use disorder
  ///
  /// In en, this message translates to:
  /// **'Drug use disorder'**
  String get chConditionDrugs;

  /// Chronic health condition: ADHD
  ///
  /// In en, this message translates to:
  /// **'Attention deficit hyperactivity disorder (ADHD)'**
  String get chConditionAdhd;

  /// Chronic health condition: PTSD
  ///
  /// In en, this message translates to:
  /// **'Post-traumatic Stress Disorder (PTSD)'**
  String get chConditionPtsd;

  /// Chronic health condition: autism spectrum disorder
  ///
  /// In en, this message translates to:
  /// **'Autism Spectrum Disorder'**
  String get chConditionAutism;

  /// Chronic health condition: schizophrenia
  ///
  /// In en, this message translates to:
  /// **'Schizophrenia'**
  String get chConditionSchizophrenia;

  /// Chronic health condition: eating disorder
  ///
  /// In en, this message translates to:
  /// **'Eating disorder'**
  String get chConditionEatingDisorder;

  /// Chronic health condition: social phobia
  ///
  /// In en, this message translates to:
  /// **'Social Phobia'**
  String get chConditionSocialPhobia;

  /// Chronic health condition: personality disorder
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

  /// Chronic health condition: hypertension
  ///
  /// In en, this message translates to:
  /// **'Hypertension'**
  String get chConditionHypertension;

  /// Chronic health condition: high cholesterol
  ///
  /// In en, this message translates to:
  /// **'High cholesterol'**
  String get chConditionHighCholesterol;

  /// Chronic health condition: heart attack
  ///
  /// In en, this message translates to:
  /// **'Heart attack'**
  String get chConditionHeartAttack;

  /// Chronic health condition: stroke
  ///
  /// In en, this message translates to:
  /// **'Stroke'**
  String get chConditionStroke;

  /// Chronic health condition: anemia
  ///
  /// In en, this message translates to:
  /// **'Anemia'**
  String get chConditionAnemia;

  /// Chronic health condition: sickle cell disease
  ///
  /// In en, this message translates to:
  /// **'Sickle cell disease'**
  String get chConditionSickleCellDisease;

  /// Chronic health - Cat 4 gate question
  ///
  /// In en, this message translates to:
  /// **'Bone, Joint and Muscle (e.g., osteoporosis, arthritis)'**
  String get chBoneJointQuestion;

  /// Chronic health condition: osteoporosis
  ///
  /// In en, this message translates to:
  /// **'Osteoporosis'**
  String get chConditionOsteoporosis;

  /// Chronic health condition: fibromyalgia
  ///
  /// In en, this message translates to:
  /// **'Fibromyalgia'**
  String get chConditionFibromyalgia;

  /// Chronic health condition: arthritis
  ///
  /// In en, this message translates to:
  /// **'Arthritis'**
  String get chConditionArthritis;

  /// Chronic health condition: systemic lupus
  ///
  /// In en, this message translates to:
  /// **'Systemic Lupus'**
  String get chConditionLupus;

  /// Chronic health - Cat 5 gate question
  ///
  /// In en, this message translates to:
  /// **'Brain and Nervous System (e.g., dementia, migraine)'**
  String get chBrainNerveQuestion;

  /// Chronic health condition: dementia
  ///
  /// In en, this message translates to:
  /// **'Dementia (includes Alzheimer\'s)'**
  String get chConditionDementia;

  /// Chronic health condition: migraine headaches
  ///
  /// In en, this message translates to:
  /// **'Migraine headaches'**
  String get chConditionMigraine;

  /// Chronic health condition: neuropathy
  ///
  /// In en, this message translates to:
  /// **'Neuropathy'**
  String get chConditionNeuropathy;

  /// Chronic health condition: epilepsy or seizure
  ///
  /// In en, this message translates to:
  /// **'Epilepsy or seizure'**
  String get chConditionEpilepsy;

  /// Chronic health condition: insomnia
  ///
  /// In en, this message translates to:
  /// **'Insomnia'**
  String get chConditionInsomnia;

  /// Chronic health condition: Parkinson's disease
  ///
  /// In en, this message translates to:
  /// **'Parkinson\'s disease'**
  String get chConditionParkinsons;

  /// Chronic health condition: concussions or loss of consciousness
  ///
  /// In en, this message translates to:
  /// **'Concussions or loss of consciousness'**
  String get chConditionConcussion;

  /// Chronic health condition: memory loss or impairment
  ///
  /// In en, this message translates to:
  /// **'Memory loss or impairment'**
  String get chConditionMemoryLoss;

  /// Chronic health condition: chronic fatigue
  ///
  /// In en, this message translates to:
  /// **'Chronic fatigue'**
  String get chConditionChronicFatigue;

  /// Chronic health condition: multiple sclerosis
  ///
  /// In en, this message translates to:
  /// **'Multiple sclerosis (MS)'**
  String get chConditionMs;

  /// Chronic health condition: spinal cord injury or impairment
  ///
  /// In en, this message translates to:
  /// **'Spinal cord injury or impairment'**
  String get chConditionSpinalCord;

  /// Chronic health condition: traumatic brain injury
  ///
  /// In en, this message translates to:
  /// **'Traumatic brain injury (TBI)'**
  String get chConditionTbi;

  /// Chronic health condition: narcolepsy
  ///
  /// In en, this message translates to:
  /// **'Narcolepsy'**
  String get chConditionNarcolepsy;

  /// Chronic health condition: ALS
  ///
  /// In en, this message translates to:
  /// **'Lou Gehrig\'s disease (amyotrophic lateral sclerosis or ALS)'**
  String get chConditionAls;

  /// Chronic health condition: muscular dystrophy
  ///
  /// In en, this message translates to:
  /// **'Muscular dystrophy (MD)'**
  String get chConditionMuscularDystrophy;

  /// Chronic health - Cat 6 gate question
  ///
  /// In en, this message translates to:
  /// **'Lung Conditions (e.g., asthma)'**
  String get chLungQuestion;

  /// Chronic health condition: asthma
  ///
  /// In en, this message translates to:
  /// **'Asthma'**
  String get chConditionAsthma;

  /// Chronic health condition: chronic lung disease
  ///
  /// In en, this message translates to:
  /// **'Chronic lung disease (COPD, emphysema, or bronchitis)'**
  String get chConditionCopd;

  /// Chronic health - Cat 7 gate question
  ///
  /// In en, this message translates to:
  /// **'Hormone and Endocrine (e.g., diabetes, hypothyroidism)'**
  String get chHormoneQuestion;

  /// Chronic health condition: pre-diabetes
  ///
  /// In en, this message translates to:
  /// **'Pre-diabetes'**
  String get chConditionPrediabetes;

  /// Chronic health condition: Type I Diabetes
  ///
  /// In en, this message translates to:
  /// **'Type I Diabetes'**
  String get chConditionDiabetesType1;

  /// Chronic health condition: Type II Diabetes
  ///
  /// In en, this message translates to:
  /// **'Type II Diabetes'**
  String get chConditionDiabetesType2;

  /// Chronic health condition: hypothyroidism
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

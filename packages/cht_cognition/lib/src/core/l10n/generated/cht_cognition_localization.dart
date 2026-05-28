import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'cht_cognition_localization_en.dart';
import 'cht_cognition_localization_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of ChtCognitionLocalization
/// returned by `ChtCognitionLocalization.of(context)`.
///
/// Applications need to include `ChtCognitionLocalization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/cht_cognition_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ChtCognitionLocalization.localizationsDelegates,
///   supportedLocales: ChtCognitionLocalization.supportedLocales,
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
/// be consistent with the languages listed in the ChtCognitionLocalization.supportedLocales
/// property.
abstract class ChtCognitionLocalization {
  ChtCognitionLocalization(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ChtCognitionLocalization of(BuildContext context) {
    return Localizations.of<ChtCognitionLocalization>(
      context,
      ChtCognitionLocalization,
    )!;
  }

  static const LocalizationsDelegate<ChtCognitionLocalization> delegate =
      _ChtCognitionLocalizationDelegate();

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

  /// Text for match button in n-back task
  ///
  /// In en, this message translates to:
  /// **'Match'**
  String get nBackTaskMatch;

  /// Text for non-match button in n-back task
  ///
  /// In en, this message translates to:
  /// **'No match'**
  String get nBackTaskNonMatch;

  /// Default message presented on the `continue button`
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// Instructions for cognitive task
  ///
  /// In en, this message translates to:
  /// **'Cognitive Task Instructions'**
  String get genericTaskInstructions;

  /// Default message presented during the rest period of a cognitive task
  ///
  /// In en, this message translates to:
  /// **'Rest'**
  String get restMessageMain;

  /// Default message presented when a cognitive task is completed
  ///
  /// In en, this message translates to:
  /// **'Done!'**
  String get endMessageMain;
}

class _ChtCognitionLocalizationDelegate
    extends LocalizationsDelegate<ChtCognitionLocalization> {
  const _ChtCognitionLocalizationDelegate();

  @override
  Future<ChtCognitionLocalization> load(Locale locale) {
    return SynchronousFuture<ChtCognitionLocalization>(
      lookupChtCognitionLocalization(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_ChtCognitionLocalizationDelegate old) => false;
}

ChtCognitionLocalization lookupChtCognitionLocalization(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return ChtCognitionLocalizationEn();
    case 'es':
      return ChtCognitionLocalizationEs();
  }

  throw FlutterError(
    'ChtCognitionLocalization.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:research_package/ui.dart';

/// Localization loader so that the [research_package] can get our language
/// files from .arb files because we are using the [intl] package for localization.
class ChtRpLocalizationLoader extends LocalizationLoader {
  ChtRpLocalizationLoader();

  /// Delegate that allows the [research_package] to use our localization
  /// files.
  /// Add it to your app's delegates.
  static RPLocalizationsDelegate get rpDelegate =>
      RPLocalizationsDelegate(loaders: [ChtRpLocalizationLoader()]);

  /// Loads the localization file from [intl] .arb files.
  @override
  Future<Map<String, String>> load(Locale locale) async {
    final langCode = locale.languageCode;
    final path =
        'packages/cht_ema_surveys/lib/src/core/l10n/package_$langCode.arb';
    try {
      final rawJson = await _loadLanguageFile(path);
      final cleanedJson = _cleanJson(rawJson);
      return cleanedJson;
      // we are following the research_package convention
      // ignore: avoid_catching_errors
    } on FlutterError catch (e) {
      throw Exception('$e: Could not load localization file: $path');
    }
  }

  /// Removes .arb metadata from the json file so that the [research_package]
  /// can use it.
  Map<String, String> _cleanJson(Map<String, dynamic> rawJson) {
    final cleanedJson = <String, String>{};
    rawJson.forEach((key, value) {
      if (key.startsWith('@')) return;
      cleanedJson[key] = value.toString();
    });
    return cleanedJson;
  }

  Future<Map<String, dynamic>> _loadLanguageFile(String path) async {
    final jsonStr = await rootBundle.loadString(path);
    final rawJson = json.decode(jsonStr) as Map<String, dynamic>;
    return rawJson;
  }
}

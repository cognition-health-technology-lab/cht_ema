import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_intent.freezed.dart';

@freezed
abstract class NavigationIntent with _$NavigationIntent {
  const factory NavigationIntent.ema() = EmaNavigationIntent;
}

import 'package:research_package/model.dart';

class DurationAnswerFormat extends RPAnswerFormat {
  final int maxHours;
  final int maxMinutes;

  DurationAnswerFormat({this.maxHours = 23, this.maxMinutes = 59});

  String get identifier => 'duration';
}

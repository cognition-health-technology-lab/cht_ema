import 'package:research_package/model.dart';

class CustomAnswerResult extends RPResult {
  final dynamic answer;

  CustomAnswerResult({
    required super.identifier,
    this.answer,
  });
}

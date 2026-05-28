import 'package:example_surveys/src/erq_ema/data/erq_items.dart';
import 'package:research_package/model.dart';

class ErqEmaSurveyViewModel {
  final task = RPOrderedTask(
    identifier: 'erq_ema_survey',
    steps: <RPStep>[instructions, erq1, erq2, erq3, erq4, erq5, erq6],
  );
}

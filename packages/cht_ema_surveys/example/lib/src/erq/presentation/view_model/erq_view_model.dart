import 'package:example_surveys/src/erq/data/erq_items.dart';
import 'package:research_package/model.dart';

class ErqViewModel {
  final task = RPOrderedTask(
    identifier: 'erq',
    steps: <RPStep>[instructions, erq1, erq2, erq3, erq4, erq5, erq6],
  );
}

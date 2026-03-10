import 'package:cht_cognition/src/n_back_task/n_back_task_trials_builder.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('buildNBackTrials', () {
    test(
      'When given n < 1, throws an error',
      () {
        expect(
          () => buildNBackTrials(n: 0),
          throwsArgumentError,
        );
        expect(
          () => buildNBackTrials(n: -1),
          throwsArgumentError,
        );
      },
    );
  });
}

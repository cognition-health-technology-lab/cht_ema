import 'package:cht_ema_surveys/src/sociodemographic/presentation/sociodemographic_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SociodemographicViewModel', () {
    final viewModel = SociodemographicViewModel();

    test('builds the expected ordered task', () {
      final identifiers = viewModel.task.steps
          .map((step) => step.identifier)
          .toList();

      expect(viewModel.task.identifier, 'sociodemographic');
      expect(
        identifiers,
        orderedEquals(<String>[
          'age',
          'biologicalSex',
          'sexOtherSpecify',
          'gender',
          'genderOtherSpecify',
          'primaryLanguage',
          'householdIncome',
          'maritalStatus',
          'educationLevel',
          'educationOtherSpecify',
          'currentlyStudying',
          'currentAcademicLevel',
          'academicLevelOtherSpecify',
          'currentlyWorking',
          'jobType',
          'sociodemographicCompletion',
        ]),
      );
    });

    test('uses unique step identifiers', () {
      final identifiers = viewModel.task.steps
          .map((step) => step.identifier)
          .toList();

      expect(identifiers.toSet().length, identifiers.length);
    });
  });
}

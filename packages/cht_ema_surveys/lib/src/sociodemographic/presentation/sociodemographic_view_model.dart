import 'package:cht_ema_surveys/src/sociodemographic/data/sociodemographic_items.dart';
import 'package:research_package/model.dart';

class SociodemographicViewModel {
  final task =
      RPNavigableOrderedTask(
          identifier: 'sociodemographic',
          steps: sociodemographicSteps,
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {
              0: 'gender',
              1: 'gender',
              2: 'gender',
              3: 'sexOtherSpecify',
            },
          ),
          'biologicalSex',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(destinationStepIdentifier: 'gender'),
          'sexOtherSpecify',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {
              0: 'primaryLanguage',
              1: 'primaryLanguage',
              2: 'primaryLanguage',
              3: 'primaryLanguage',
              4: 'genderOtherSpecify',
            },
          ),
          'gender',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'primaryLanguage',
          ),
          'genderOtherSpecify',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {
              0: 'currentlyStudying',
              1: 'currentlyStudying',
              2: 'currentlyStudying',
              3: 'currentlyStudying',
              4: 'currentlyStudying',
              5: 'currentlyStudying',
              6: 'currentlyStudying',
              7: 'educationOtherSpecify',
            },
          ),
          'educationLevel',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'currentlyStudying',
          ),
          'educationOtherSpecify',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {0: 'currentlyWorking', 1: 'currentAcademicLevel'},
          ),
          'currentlyStudying',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {
              0: 'currentlyWorking',
              1: 'currentlyWorking',
              2: 'currentlyWorking',
              3: 'currentlyWorking',
              4: 'currentlyWorking',
              5: 'currentlyWorking',
              6: 'academicLevelOtherSpecify',
            },
          ),
          'currentAcademicLevel',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'currentlyWorking',
          ),
          'academicLevelOtherSpecify',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {0: 'sociodemographicCompletion', 1: 'jobType'},
          ),
          'currentlyWorking',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'sociodemographicCompletion',
          ),
          'jobType',
        );
}

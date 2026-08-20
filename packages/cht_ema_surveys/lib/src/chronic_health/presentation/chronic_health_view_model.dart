import 'package:cht_ema_surveys/src/chronic_health/data/chronic_health_items.dart';
import 'package:research_package/model.dart';

class ChronicHealthViewModel {
  final task =
      RPNavigableOrderedTask(
          identifier: 'chronicHealth',
          steps: chronicHealthSteps,
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(answerMap: {1: 'chDepression', 0: 'chCancerCategory'}),
          'chMentalHealthCategory',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'chCancerCategory',
          ),
          'chPersonalityDisorder',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'chHeartBloodCategory',
          ),
          'chCancerCategory',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {1: 'chHypertension', 0: 'chBoneJointCategory'},
          ),
          'chHeartBloodCategory',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'chBoneJointCategory',
          ),
          'chSickleCellDisease',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {1: 'chOsteoporosis', 0: 'chBrainNerveCategory'},
          ),
          'chBoneJointCategory',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'chBrainNerveCategory',
          ),
          'chLupus',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(answerMap: {1: 'chDementia', 0: 'chLungCategory'}),
          'chBrainNerveCategory',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'chLungCategory',
          ),
          'chMuscularDystrophy',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(
            answerMap: {1: 'chAsthma', 0: 'chHormoneEndocrineCategory'},
          ),
          'chLungCategory',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(
            destinationStepIdentifier: 'chHormoneEndocrineCategory',
          ),
          'chCopd',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPStepJumpRule(answerMap: {1: 'chPrediabetes', 0: 'chCompletion'}),
          'chHormoneEndocrineCategory',
        )
        ..setNavigationRuleForTriggerStepIdentifier(
          RPDirectStepNavigationRule(destinationStepIdentifier: 'chCompletion'),
          'chHypothyroidism',
        );
}

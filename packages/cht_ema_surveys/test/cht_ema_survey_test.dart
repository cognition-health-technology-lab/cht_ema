import 'package:cht_ema_surveys/src/chronic_health/presentation/chronic_health_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:research_package/model.dart';

void main() {
  group('ChronicHealthViewModel', () {
    final task = ChronicHealthViewModel().task;

    void expectJump(String trigger, Map<int, String> expected) {
      final rule = task.navigationRuleForTriggerStepIdentifier(trigger);
      expect(rule, isA<RPStepJumpRule>());
      expect((rule as RPStepJumpRule).answerMap, expected);
    }

    void expectDirect(String trigger, String destination) {
      final rule = task.navigationRuleForTriggerStepIdentifier(trigger);
      expect(rule, isA<RPDirectStepNavigationRule>());
      expect(
        (rule as RPDirectStepNavigationRule).destinationStepIdentifier,
        destination,
      );
    }

    test('builds the expected task with unique step identifiers', () {
      final identifiers = task.steps.map((step) => step.identifier).toList();

      expect(task.identifier, 'chronicHealth');
      expect(
        identifiers,
        orderedEquals(<String>[
          'chMentalHealthCategory',
          'chDepression',
          'chAnxiety',
          'chAlcohol',
          'chDrugs',
          'chAdhd',
          'chPtsd',
          'chAutism',
          'chSchizophrenia',
          'chEatingDisorder',
          'chSocialPhobia',
          'chPersonalityDisorder',
          'chCancerCategory',
          'chHeartBloodCategory',
          'chHypertension',
          'chHighCholesterol',
          'chHeartAttack',
          'chStroke',
          'chAnemia',
          'chSickleCellDisease',
          'chBoneJointCategory',
          'chOsteoporosis',
          'chFibromyalgia',
          'chArthritis',
          'chLupus',
          'chBrainNerveCategory',
          'chDementia',
          'chMigraine',
          'chNeuropathy',
          'chEpilepsy',
          'chInsomnia',
          'chParkinsons',
          'chConcussion',
          'chMemoryLoss',
          'chChronicFatigue',
          'chMs',
          'chSpinalCord',
          'chTbi',
          'chNarcolepsy',
          'chAls',
          'chMuscularDystrophy',
          'chLungCategory',
          'chAsthma',
          'chCopd',
          'chHormoneEndocrineCategory',
          'chPrediabetes',
          'chDiabetesType1',
          'chDiabetesType2',
          'chHypothyroidism',
          'chCompletion',
        ]),
      );
      expect(identifiers.toSet().length, identifiers.length);
    });

    test('all navigation triggers and destinations reference existing steps', () {
      final identifiers = task.steps.map((step) => step.identifier).toSet();

      for (final entry in task.stepNavigationRules.entries) {
        expect(
          identifiers,
          contains(entry.key),
          reason: 'Navigation trigger ${entry.key} must be a task step.',
        );

        final rule = entry.value;
        if (rule is RPStepJumpRule) {
          for (final destination in rule.answerMap.values) {
            expect(
              identifiers,
              contains(destination),
              reason: 'Jump destination $destination must be a task step.',
            );
          }
        } else if (rule is RPDirectStepNavigationRule) {
          expect(
            identifiers,
            contains(rule.destinationStepIdentifier),
            reason:
                'Direct destination ${rule.destinationStepIdentifier} must be a task step.',
          );
        } else {
          fail('Unexpected navigation rule type: ${rule.runtimeType}');
        }
      }
    });

    test('defines the expected category gate navigation', () {
      expectJump(
        'chMentalHealthCategory',
        <int, String>{1: 'chDepression', 0: 'chCancerCategory'},
      );
      expectJump(
        'chHeartBloodCategory',
        <int, String>{1: 'chHypertension', 0: 'chBoneJointCategory'},
      );
      expectJump(
        'chBoneJointCategory',
        <int, String>{1: 'chOsteoporosis', 0: 'chBrainNerveCategory'},
      );
      expectJump(
        'chBrainNerveCategory',
        <int, String>{1: 'chDementia', 0: 'chLungCategory'},
      );
      expectJump(
        'chLungCategory',
        <int, String>{1: 'chAsthma', 0: 'chHormoneEndocrineCategory'},
      );
      expectJump(
        'chHormoneEndocrineCategory',
        <int, String>{1: 'chPrediabetes', 0: 'chCompletion'},
      );
    });

    test('defines the expected category-to-category transitions', () {
      expectDirect('chPersonalityDisorder', 'chCancerCategory');
      expectDirect('chCancerCategory', 'chHeartBloodCategory');
      expectDirect('chSickleCellDisease', 'chBoneJointCategory');
      expectDirect('chLupus', 'chBrainNerveCategory');
      expectDirect('chMuscularDystrophy', 'chLungCategory');
      expectDirect('chCopd', 'chHormoneEndocrineCategory');
      expectDirect('chHypothyroidism', 'chCompletion');
    });

    test('defines exactly the expected navigation rule count', () {
      expect(task.stepNavigationRules, hasLength(13));
    });
  });
}

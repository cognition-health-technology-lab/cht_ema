import 'package:example_surveys/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:research_package/model.dart';
import 'package:research_package/ui.dart';

class ChronicHealthPage extends StatelessWidget {
  const ChronicHealthPage({super.key});

  // Helper: builds a Yes/No question step for a single condition.
  RPQuestionStep _yesNoStep({
    required String identifier,
    required String title,
    required AppLocalizations l10n,
  }) {
    return RPQuestionStep(
      identifier: identifier,
      title: title,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.answerYes, value: 1),
          RPChoice(text: l10n.answerNo, value: 0),
        ],
      ),
    );
  }

  RPNavigableOrderedTask _buildTask(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    // ── Category gate helper ───────────────────────────────────────────────
    // Each gate asks whether the participant has ANY condition in the category.

    RPQuestionStep gate(String identifier, String title) =>
        _yesNoStep(identifier: identifier, title: title, l10n: l10n);

    // ── Category 1: Mental Health or Substance Abuse ──────────────────────

    final mhGate = gate(
      'chMentalHealthCategory',
      '${l10n.chInstructions}\n\n${l10n.chMentalHealthQuestion}',
    );

    final mhDepression = _yesNoStep(
      identifier: 'chDepression',
      title: l10n.chConditionDepression,
      l10n: l10n,
    );
    final mhAnxiety = _yesNoStep(
      identifier: 'chAnxiety',
      title: l10n.chConditionAnxiety,
      l10n: l10n,
    );
    final mhAlcohol = _yesNoStep(
      identifier: 'chAlcohol',
      title: l10n.chConditionAlcohol,
      l10n: l10n,
    );
    final mhDrugs = _yesNoStep(
      identifier: 'chDrugs',
      title: l10n.chConditionDrugs,
      l10n: l10n,
    );
    final mhAdhd = _yesNoStep(
      identifier: 'chAdhd',
      title: l10n.chConditionAdhd,
      l10n: l10n,
    );
    final mhPtsd = _yesNoStep(
      identifier: 'chPtsd',
      title: l10n.chConditionPtsd,
      l10n: l10n,
    );
    final mhAutism = _yesNoStep(
      identifier: 'chAutism',
      title: l10n.chConditionAutism,
      l10n: l10n,
    );
    final mhSchizophrenia = _yesNoStep(
      identifier: 'chSchizophrenia',
      title: l10n.chConditionSchizophrenia,
      l10n: l10n,
    );
    final mhEatingDisorder = _yesNoStep(
      identifier: 'chEatingDisorder',
      title: l10n.chConditionEatingDisorder,
      l10n: l10n,
    );
    final mhSocialPhobia = _yesNoStep(
      identifier: 'chSocialPhobia',
      title: l10n.chConditionSocialPhobia,
      l10n: l10n,
    );
    final mhPersonalityDisorder = _yesNoStep(
      identifier: 'chPersonalityDisorder',
      title: l10n.chConditionPersonalityDisorder,
      l10n: l10n,
    );

    // ── Category 2: Cancer ────────────────────────────────────────────────

    final cancerGate = gate('chCancerCategory', l10n.chCancerQuestion);

    // ── Category 3: Heart and Blood ───────────────────────────────────────

    final hbGate = gate('chHeartBloodCategory', l10n.chHeartBloodQuestion);

    final hbHypertension = _yesNoStep(
      identifier: 'chHypertension',
      title: l10n.chConditionHypertension,
      l10n: l10n,
    );
    final hbHighCholesterol = _yesNoStep(
      identifier: 'chHighCholesterol',
      title: l10n.chConditionHighCholesterol,
      l10n: l10n,
    );
    final hbHeartAttack = _yesNoStep(
      identifier: 'chHeartAttack',
      title: l10n.chConditionHeartAttack,
      l10n: l10n,
    );
    final hbStroke = _yesNoStep(
      identifier: 'chStroke',
      title: l10n.chConditionStroke,
      l10n: l10n,
    );
    final hbAnemia = _yesNoStep(
      identifier: 'chAnemia',
      title: l10n.chConditionAnemia,
      l10n: l10n,
    );
    final hbSickleCellDisease = _yesNoStep(
      identifier: 'chSickleCellDisease',
      title: l10n.chConditionSickleCellDisease,
      l10n: l10n,
    );

    // ── Category 4: Bone, Joint and Muscle ───────────────────────────────

    final bjGate = gate('chBoneJointCategory', l10n.chBoneJointQuestion);

    final bjOsteoporosis = _yesNoStep(
      identifier: 'chOsteoporosis',
      title: l10n.chConditionOsteoporosis,
      l10n: l10n,
    );
    final bjFibromyalgia = _yesNoStep(
      identifier: 'chFibromyalgia',
      title: l10n.chConditionFibromyalgia,
      l10n: l10n,
    );
    final bjArthritis = _yesNoStep(
      identifier: 'chArthritis',
      title: l10n.chConditionArthritis,
      l10n: l10n,
    );
    final bjLupus = _yesNoStep(
      identifier: 'chLupus',
      title: l10n.chConditionLupus,
      l10n: l10n,
    );

    // ── Category 5: Brain and Nervous System ─────────────────────────────

    final bnGate = gate('chBrainNerveCategory', l10n.chBrainNerveQuestion);

    final bnDementia = _yesNoStep(
      identifier: 'chDementia',
      title: l10n.chConditionDementia,
      l10n: l10n,
    );
    final bnMigraine = _yesNoStep(
      identifier: 'chMigraine',
      title: l10n.chConditionMigraine,
      l10n: l10n,
    );
    final bnNeuropathy = _yesNoStep(
      identifier: 'chNeuropathy',
      title: l10n.chConditionNeuropathy,
      l10n: l10n,
    );
    final bnEpilepsy = _yesNoStep(
      identifier: 'chEpilepsy',
      title: l10n.chConditionEpilepsy,
      l10n: l10n,
    );
    final bnInsomnia = _yesNoStep(
      identifier: 'chInsomnia',
      title: l10n.chConditionInsomnia,
      l10n: l10n,
    );
    final bnParkinsons = _yesNoStep(
      identifier: 'chParkinsons',
      title: l10n.chConditionParkinsons,
      l10n: l10n,
    );
    final bnConcussion = _yesNoStep(
      identifier: 'chConcussion',
      title: l10n.chConditionConcussion,
      l10n: l10n,
    );
    final bnMemoryLoss = _yesNoStep(
      identifier: 'chMemoryLoss',
      title: l10n.chConditionMemoryLoss,
      l10n: l10n,
    );
    final bnChronicFatigue = _yesNoStep(
      identifier: 'chChronicFatigue',
      title: l10n.chConditionChronicFatigue,
      l10n: l10n,
    );
    final bnMs = _yesNoStep(
      identifier: 'chMs',
      title: l10n.chConditionMs,
      l10n: l10n,
    );
    final bnSpinalCord = _yesNoStep(
      identifier: 'chSpinalCord',
      title: l10n.chConditionSpinalCord,
      l10n: l10n,
    );
    final bnTbi = _yesNoStep(
      identifier: 'chTbi',
      title: l10n.chConditionTbi,
      l10n: l10n,
    );
    final bnNarcolepsy = _yesNoStep(
      identifier: 'chNarcolepsy',
      title: l10n.chConditionNarcolepsy,
      l10n: l10n,
    );
    final bnAls = _yesNoStep(
      identifier: 'chAls',
      title: l10n.chConditionAls,
      l10n: l10n,
    );
    final bnMuscularDystrophy = _yesNoStep(
      identifier: 'chMuscularDystrophy',
      title: l10n.chConditionMuscularDystrophy,
      l10n: l10n,
    );

    // ── Category 6: Lung Conditions ───────────────────────────────────────

    final lungGate = gate('chLungCategory', l10n.chLungQuestion);

    final lungAsthma = _yesNoStep(
      identifier: 'chAsthma',
      title: l10n.chConditionAsthma,
      l10n: l10n,
    );
    final lungCopd = _yesNoStep(
      identifier: 'chCopd',
      title: l10n.chConditionCopd,
      l10n: l10n,
    );

    // ── Category 7: Hormone and Endocrine ────────────────────────────────

    final heGate = gate('chHormoneEndocrineCategory', l10n.chHormoneQuestion);

    final hePrediabetes = _yesNoStep(
      identifier: 'chPrediabetes',
      title: l10n.chConditionPrediabetes,
      l10n: l10n,
    );
    final heDiabetesType1 = _yesNoStep(
      identifier: 'chDiabetesType1',
      title: l10n.chConditionDiabetesType1,
      l10n: l10n,
    );
    final heDiabetesType2 = _yesNoStep(
      identifier: 'chDiabetesType2',
      title: l10n.chConditionDiabetesType2,
      l10n: l10n,
    );
    final heHypothyroidism = _yesNoStep(
      identifier: 'chHypothyroidism',
      title: l10n.chConditionHypothyroidism,
      l10n: l10n,
    );

    // ── Completion ────────────────────────────────────────────────────────

    final completionStep = RPCompletionStep(
      identifier: 'chCompletion',
      title: l10n.chCompletionTitle,
      text: l10n.chCompletionText,
    );

    // ── Task ──────────────────────────────────────────────────────────────

    final task = RPNavigableOrderedTask(
      identifier: 'chronicHealthSurvey',
      steps: [
        // Cat 1: Mental Health
        mhGate,
        mhDepression, mhAnxiety, mhAlcohol, mhDrugs, mhAdhd,
        mhPtsd, mhAutism, mhSchizophrenia, mhEatingDisorder,
        mhSocialPhobia, mhPersonalityDisorder,
        // Cat 2: Cancer (gate only)
        cancerGate,
        // Cat 3: Heart and Blood
        hbGate,
        hbHypertension, hbHighCholesterol, hbHeartAttack,
        hbStroke, hbAnemia, hbSickleCellDisease,
        // Cat 4: Bone, Joint and Muscle
        bjGate,
        bjOsteoporosis, bjFibromyalgia, bjArthritis, bjLupus,
        // Cat 5: Brain and Nervous System
        bnGate,
        bnDementia, bnMigraine, bnNeuropathy, bnEpilepsy, bnInsomnia,
        bnParkinsons, bnConcussion, bnMemoryLoss, bnChronicFatigue,
        bnMs, bnSpinalCord, bnTbi, bnNarcolepsy, bnAls, bnMuscularDystrophy,
        // Cat 6: Lung Conditions
        lungGate,
        lungAsthma, lungCopd,
        // Cat 7: Hormone and Endocrine
        heGate,
        hePrediabetes, heDiabetesType1, heDiabetesType2, heHypothyroidism,
        // Done
        completionStep,
      ],
    );

    // ── Navigation rules ──────────────────────────────────────────────────
    //
    // Category gates: yes (1) → first condition, no (0) → next category gate.
    // Last condition in each category → next category gate (always).
    // All other conditions within a category fall through naturally.

    // Cat 1: Mental Health gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(answerMap: {1: 'chDepression', 0: 'chCancerCategory'}),
      'chMentalHealthCategory',
    );
    // Last condition in Cat 1 → Cat 2 gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(destinationStepIdentifier: 'chCancerCategory'),
      'chPersonalityDisorder',
    );

    // Cat 2: Cancer gate → Cat 3 gate (no sub-conditions, always jump)
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(
        destinationStepIdentifier: 'chHeartBloodCategory',
      ),
      'chCancerCategory',
    );

    // Cat 3: Heart and Blood gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(
        answerMap: {1: 'chHypertension', 0: 'chBoneJointCategory'},
      ),
      'chHeartBloodCategory',
    );
    // Last condition in Cat 3 → Cat 4 gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(
        destinationStepIdentifier: 'chBoneJointCategory',
      ),
      'chSickleCellDisease',
    );

    // Cat 4: Bone, Joint and Muscle gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(
        answerMap: {1: 'chOsteoporosis', 0: 'chBrainNerveCategory'},
      ),
      'chBoneJointCategory',
    );
    // Last condition in Cat 4 → Cat 5 gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(
        destinationStepIdentifier: 'chBrainNerveCategory',
      ),
      'chLupus',
    );

    // Cat 5: Brain and Nervous System gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(answerMap: {1: 'chDementia', 0: 'chLungCategory'}),
      'chBrainNerveCategory',
    );
    // Last condition in Cat 5 → Cat 6 gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(destinationStepIdentifier: 'chLungCategory'),
      'chMuscularDystrophy',
    );

    // Cat 6: Lung Conditions gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(
        answerMap: {1: 'chAsthma', 0: 'chHormoneEndocrineCategory'},
      ),
      'chLungCategory',
    );
    // Last condition in Cat 6 → Cat 7 gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(
        destinationStepIdentifier: 'chHormoneEndocrineCategory',
      ),
      'chCopd',
    );

    // Cat 7: Hormone and Endocrine gate
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(answerMap: {1: 'chPrediabetes', 0: 'chCompletion'}),
      'chHormoneEndocrineCategory',
    );
    // Last condition in Cat 7 → completion
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(destinationStepIdentifier: 'chCompletion'),
      'chHypothyroidism',
    );

    return task;
  }

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: _buildTask(context));
  }
}

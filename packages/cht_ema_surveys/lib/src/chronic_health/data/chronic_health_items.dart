import 'package:research_package/model.dart';

final _yesNoAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'answerYes', value: 1),
    RPChoice(text: 'answerNo', value: 0),
  ],
);

RPQuestionStep _yesNoStep({
  required String identifier,
  required String title,
}) {
  return RPQuestionStep(
    identifier: identifier,
    title: title,
    answerFormat: _yesNoAnswerFormat,
  );
}

final chronicHealthSteps = <RPStep>[
  _yesNoStep(
    identifier: 'chMentalHealthCategory',
    title: 'chMentalHealthCategoryPrompt',
  ),
  _yesNoStep(
    identifier: 'chDepression',
    title: 'chConditionDepression',
  ),
  _yesNoStep(
    identifier: 'chAnxiety',
    title: 'chConditionAnxiety',
  ),
  _yesNoStep(
    identifier: 'chAlcohol',
    title: 'chConditionAlcohol',
  ),
  _yesNoStep(
    identifier: 'chDrugs',
    title: 'chConditionDrugs',
  ),
  _yesNoStep(
    identifier: 'chAdhd',
    title: 'chConditionAdhd',
  ),
  _yesNoStep(
    identifier: 'chPtsd',
    title: 'chConditionPtsd',
  ),
  _yesNoStep(
    identifier: 'chAutism',
    title: 'chConditionAutism',
  ),
  _yesNoStep(
    identifier: 'chSchizophrenia',
    title: 'chConditionSchizophrenia',
  ),
  _yesNoStep(
    identifier: 'chEatingDisorder',
    title: 'chConditionEatingDisorder',
  ),
  _yesNoStep(
    identifier: 'chSocialPhobia',
    title: 'chConditionSocialPhobia',
  ),
  _yesNoStep(
    identifier: 'chPersonalityDisorder',
    title: 'chConditionPersonalityDisorder',
  ),
  _yesNoStep(
    identifier: 'chCancerCategory',
    title: 'chCancerQuestion',
  ),
  _yesNoStep(
    identifier: 'chHeartBloodCategory',
    title: 'chHeartBloodQuestion',
  ),
  _yesNoStep(
    identifier: 'chHypertension',
    title: 'chConditionHypertension',
  ),
  _yesNoStep(
    identifier: 'chHighCholesterol',
    title: 'chConditionHighCholesterol',
  ),
  _yesNoStep(
    identifier: 'chHeartAttack',
    title: 'chConditionHeartAttack',
  ),
  _yesNoStep(
    identifier: 'chStroke',
    title: 'chConditionStroke',
  ),
  _yesNoStep(
    identifier: 'chAnemia',
    title: 'chConditionAnemia',
  ),
  _yesNoStep(
    identifier: 'chSickleCellDisease',
    title: 'chConditionSickleCellDisease',
  ),
  _yesNoStep(
    identifier: 'chBoneJointCategory',
    title: 'chBoneJointQuestion',
  ),
  _yesNoStep(
    identifier: 'chOsteoporosis',
    title: 'chConditionOsteoporosis',
  ),
  _yesNoStep(
    identifier: 'chFibromyalgia',
    title: 'chConditionFibromyalgia',
  ),
  _yesNoStep(
    identifier: 'chArthritis',
    title: 'chConditionArthritis',
  ),
  _yesNoStep(
    identifier: 'chLupus',
    title: 'chConditionLupus',
  ),
  _yesNoStep(
    identifier: 'chBrainNerveCategory',
    title: 'chBrainNerveQuestion',
  ),
  _yesNoStep(
    identifier: 'chDementia',
    title: 'chConditionDementia',
  ),
  _yesNoStep(
    identifier: 'chMigraine',
    title: 'chConditionMigraine',
  ),
  _yesNoStep(
    identifier: 'chNeuropathy',
    title: 'chConditionNeuropathy',
  ),
  _yesNoStep(
    identifier: 'chEpilepsy',
    title: 'chConditionEpilepsy',
  ),
  _yesNoStep(
    identifier: 'chInsomnia',
    title: 'chConditionInsomnia',
  ),
  _yesNoStep(
    identifier: 'chParkinsons',
    title: 'chConditionParkinsons',
  ),
  _yesNoStep(
    identifier: 'chConcussion',
    title: 'chConditionConcussion',
  ),
  _yesNoStep(
    identifier: 'chMemoryLoss',
    title: 'chConditionMemoryLoss',
  ),
  _yesNoStep(
    identifier: 'chChronicFatigue',
    title: 'chConditionChronicFatigue',
  ),
  _yesNoStep(
    identifier: 'chMs',
    title: 'chConditionMs',
  ),
  _yesNoStep(
    identifier: 'chSpinalCord',
    title: 'chConditionSpinalCord',
  ),
  _yesNoStep(
    identifier: 'chTbi',
    title: 'chConditionTbi',
  ),
  _yesNoStep(
    identifier: 'chNarcolepsy',
    title: 'chConditionNarcolepsy',
  ),
  _yesNoStep(
    identifier: 'chAls',
    title: 'chConditionAls',
  ),
  _yesNoStep(
    identifier: 'chMuscularDystrophy',
    title: 'chConditionMuscularDystrophy',
  ),
  _yesNoStep(
    identifier: 'chLungCategory',
    title: 'chLungQuestion',
  ),
  _yesNoStep(
    identifier: 'chAsthma',
    title: 'chConditionAsthma',
  ),
  _yesNoStep(
    identifier: 'chCopd',
    title: 'chConditionCopd',
  ),
  _yesNoStep(
    identifier: 'chHormoneEndocrineCategory',
    title: 'chHormoneQuestion',
  ),
  _yesNoStep(
    identifier: 'chPrediabetes',
    title: 'chConditionPrediabetes',
  ),
  _yesNoStep(
    identifier: 'chDiabetesType1',
    title: 'chConditionDiabetesType1',
  ),
  _yesNoStep(
    identifier: 'chDiabetesType2',
    title: 'chConditionDiabetesType2',
  ),
  _yesNoStep(
    identifier: 'chHypothyroidism',
    title: 'chConditionHypothyroidism',
  ),
  RPCompletionStep(
    identifier: 'chCompletion',
    title: 'chCompletionTitle',
    text: 'chCompletionText',
  ),
];

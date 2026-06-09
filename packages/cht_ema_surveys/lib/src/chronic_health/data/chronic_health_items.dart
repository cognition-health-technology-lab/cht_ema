import 'package:research_package/model.dart';

final yesNoAnswerFormat = RPChoiceAnswerFormat(
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
    answerFormat: yesNoAnswerFormat,
  );
}

RPQuestionStep mentalHealthCategoryStep = _yesNoStep(
  identifier: 'chMentalHealthCategory',
  title: 'chMentalHealthCategoryPrompt',
);

RPQuestionStep depressionStep = _yesNoStep(
  identifier: 'chDepression',
  title: 'chConditionDepression',
);

RPQuestionStep anxietyStep = _yesNoStep(
  identifier: 'chAnxiety',
  title: 'chConditionAnxiety',
);

RPQuestionStep alcoholStep = _yesNoStep(
  identifier: 'chAlcohol',
  title: 'chConditionAlcohol',
);

RPQuestionStep drugsStep = _yesNoStep(
  identifier: 'chDrugs',
  title: 'chConditionDrugs',
);

RPQuestionStep adhdStep = _yesNoStep(
  identifier: 'chAdhd',
  title: 'chConditionAdhd',
);

RPQuestionStep ptsdStep = _yesNoStep(
  identifier: 'chPtsd',
  title: 'chConditionPtsd',
);

RPQuestionStep autismStep = _yesNoStep(
  identifier: 'chAutism',
  title: 'chConditionAutism',
);

RPQuestionStep schizophreniaStep = _yesNoStep(
  identifier: 'chSchizophrenia',
  title: 'chConditionSchizophrenia',
);

RPQuestionStep eatingDisorderStep = _yesNoStep(
  identifier: 'chEatingDisorder',
  title: 'chConditionEatingDisorder',
);

RPQuestionStep socialPhobiaStep = _yesNoStep(
  identifier: 'chSocialPhobia',
  title: 'chConditionSocialPhobia',
);

RPQuestionStep personalityDisorderStep = _yesNoStep(
  identifier: 'chPersonalityDisorder',
  title: 'chConditionPersonalityDisorder',
);

RPQuestionStep cancerCategoryStep = _yesNoStep(
  identifier: 'chCancerCategory',
  title: 'chCancerQuestion',
);

RPQuestionStep heartBloodCategoryStep = _yesNoStep(
  identifier: 'chHeartBloodCategory',
  title: 'chHeartBloodQuestion',
);

RPQuestionStep hypertensionStep = _yesNoStep(
  identifier: 'chHypertension',
  title: 'chConditionHypertension',
);

RPQuestionStep highCholesterolStep = _yesNoStep(
  identifier: 'chHighCholesterol',
  title: 'chConditionHighCholesterol',
);

RPQuestionStep heartAttackStep = _yesNoStep(
  identifier: 'chHeartAttack',
  title: 'chConditionHeartAttack',
);

RPQuestionStep strokeStep = _yesNoStep(
  identifier: 'chStroke',
  title: 'chConditionStroke',
);

RPQuestionStep anemiaStep = _yesNoStep(
  identifier: 'chAnemia',
  title: 'chConditionAnemia',
);

RPQuestionStep sickleCellDiseaseStep = _yesNoStep(
  identifier: 'chSickleCellDisease',
  title: 'chConditionSickleCellDisease',
);

RPQuestionStep boneJointCategoryStep = _yesNoStep(
  identifier: 'chBoneJointCategory',
  title: 'chBoneJointQuestion',
);

RPQuestionStep osteoporosisStep = _yesNoStep(
  identifier: 'chOsteoporosis',
  title: 'chConditionOsteoporosis',
);

RPQuestionStep fibromyalgiaStep = _yesNoStep(
  identifier: 'chFibromyalgia',
  title: 'chConditionFibromyalgia',
);

RPQuestionStep arthritisStep = _yesNoStep(
  identifier: 'chArthritis',
  title: 'chConditionArthritis',
);

RPQuestionStep lupusStep = _yesNoStep(
  identifier: 'chLupus',
  title: 'chConditionLupus',
);

RPQuestionStep brainNerveCategoryStep = _yesNoStep(
  identifier: 'chBrainNerveCategory',
  title: 'chBrainNerveQuestion',
);

RPQuestionStep dementiaStep = _yesNoStep(
  identifier: 'chDementia',
  title: 'chConditionDementia',
);

RPQuestionStep migraineStep = _yesNoStep(
  identifier: 'chMigraine',
  title: 'chConditionMigraine',
);

RPQuestionStep neuropathyStep = _yesNoStep(
  identifier: 'chNeuropathy',
  title: 'chConditionNeuropathy',
);

RPQuestionStep epilepsyStep = _yesNoStep(
  identifier: 'chEpilepsy',
  title: 'chConditionEpilepsy',
);

RPQuestionStep insomniaStep = _yesNoStep(
  identifier: 'chInsomnia',
  title: 'chConditionInsomnia',
);

RPQuestionStep parkinsonsStep = _yesNoStep(
  identifier: 'chParkinsons',
  title: 'chConditionParkinsons',
);

RPQuestionStep concussionStep = _yesNoStep(
  identifier: 'chConcussion',
  title: 'chConditionConcussion',
);

RPQuestionStep memoryLossStep = _yesNoStep(
  identifier: 'chMemoryLoss',
  title: 'chConditionMemoryLoss',
);

RPQuestionStep chronicFatigueStep = _yesNoStep(
  identifier: 'chChronicFatigue',
  title: 'chConditionChronicFatigue',
);

RPQuestionStep msStep = _yesNoStep(
  identifier: 'chMs',
  title: 'chConditionMs',
);

RPQuestionStep spinalCordStep = _yesNoStep(
  identifier: 'chSpinalCord',
  title: 'chConditionSpinalCord',
);

RPQuestionStep tbiStep = _yesNoStep(
  identifier: 'chTbi',
  title: 'chConditionTbi',
);

RPQuestionStep narcolepsyStep = _yesNoStep(
  identifier: 'chNarcolepsy',
  title: 'chConditionNarcolepsy',
);

RPQuestionStep alsStep = _yesNoStep(
  identifier: 'chAls',
  title: 'chConditionAls',
);

RPQuestionStep muscularDystrophyStep = _yesNoStep(
  identifier: 'chMuscularDystrophy',
  title: 'chConditionMuscularDystrophy',
);

RPQuestionStep lungCategoryStep = _yesNoStep(
  identifier: 'chLungCategory',
  title: 'chLungQuestion',
);

RPQuestionStep asthmaStep = _yesNoStep(
  identifier: 'chAsthma',
  title: 'chConditionAsthma',
);

RPQuestionStep copdStep = _yesNoStep(
  identifier: 'chCopd',
  title: 'chConditionCopd',
);

RPQuestionStep hormoneEndocrineCategoryStep = _yesNoStep(
  identifier: 'chHormoneEndocrineCategory',
  title: 'chHormoneQuestion',
);

RPQuestionStep prediabetesStep = _yesNoStep(
  identifier: 'chPrediabetes',
  title: 'chConditionPrediabetes',
);

RPQuestionStep diabetesType1Step = _yesNoStep(
  identifier: 'chDiabetesType1',
  title: 'chConditionDiabetesType1',
);

RPQuestionStep diabetesType2Step = _yesNoStep(
  identifier: 'chDiabetesType2',
  title: 'chConditionDiabetesType2',
);

RPQuestionStep hypothyroidismStep = _yesNoStep(
  identifier: 'chHypothyroidism',
  title: 'chConditionHypothyroidism',
);

RPCompletionStep completionStep = RPCompletionStep(
  identifier: 'chCompletion',
  title: 'chCompletionTitle',
  text: 'chCompletionText',
);

final chronicHealthSteps = <RPStep>[
  mentalHealthCategoryStep,
  depressionStep,
  anxietyStep,
  alcoholStep,
  drugsStep,
  adhdStep,
  ptsdStep,
  autismStep,
  schizophreniaStep,
  eatingDisorderStep,
  socialPhobiaStep,
  personalityDisorderStep,
  cancerCategoryStep,
  heartBloodCategoryStep,
  hypertensionStep,
  highCholesterolStep,
  heartAttackStep,
  strokeStep,
  anemiaStep,
  sickleCellDiseaseStep,
  boneJointCategoryStep,
  osteoporosisStep,
  fibromyalgiaStep,
  arthritisStep,
  lupusStep,
  brainNerveCategoryStep,
  dementiaStep,
  migraineStep,
  neuropathyStep,
  epilepsyStep,
  insomniaStep,
  parkinsonsStep,
  concussionStep,
  memoryLossStep,
  chronicFatigueStep,
  msStep,
  spinalCordStep,
  tbiStep,
  narcolepsyStep,
  alsStep,
  muscularDystrophyStep,
  lungCategoryStep,
  asthmaStep,
  copdStep,
  hormoneEndocrineCategoryStep,
  prediabetesStep,
  diabetesType1Step,
  diabetesType2Step,
  hypothyroidismStep,
  completionStep,
];

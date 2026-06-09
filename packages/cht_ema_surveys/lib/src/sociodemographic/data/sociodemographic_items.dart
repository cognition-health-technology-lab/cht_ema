import 'package:research_package/model.dart';

final ageStep = RPQuestionStep(
  identifier: 'age',
  title: 'ageQuestion',
  answerFormat: RPIntegerAnswerFormat(minValue: 0, maxValue: 120),
);

final biologicalSexAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'sexMale', value: 0),
    RPChoice(text: 'sexFemale', value: 1),
    RPChoice(text: 'sexIntersexual', value: 2),
    RPChoice(text: 'sexOther', value: 3),
  ],
);

final biologicalSexStep = RPQuestionStep(
  identifier: 'biologicalSex',
  title: 'biologicalSexQuestion',
  answerFormat: biologicalSexAnswerFormat,
);

final sexOtherStep = RPQuestionStep(
  identifier: 'sexOtherSpecify',
  title: 'sexOtherSpecify',
  answerFormat: RPTextAnswerFormat(hintText: 'specifyHint'),
);

final genderAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'genderMale', value: 0),
    RPChoice(text: 'genderFemale', value: 1),
    RPChoice(text: 'genderNonBinary', value: 2),
    RPChoice(text: 'genderTransgender', value: 3),
    RPChoice(text: 'genderOther', value: 4),
  ],
);

final genderStep = RPQuestionStep(
  identifier: 'gender',
  title: 'genderQuestion',
  answerFormat: genderAnswerFormat,
);

final genderOtherStep = RPQuestionStep(
  identifier: 'genderOtherSpecify',
  title: 'genderOtherSpecify',
  answerFormat: RPTextAnswerFormat(hintText: 'specifyHint'),
);

final primaryLanguageAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'languageSpanish', value: 0),
    RPChoice(text: 'languageEnglish', value: 1),
  ],
);

final primaryLanguageStep = RPQuestionStep(
  identifier: 'primaryLanguage',
  title: 'primaryLanguageQuestion',
  answerFormat: primaryLanguageAnswerFormat,
);

final householdIncomeAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'incomeLessThan10k', value: 0),
    RPChoice(text: 'income10kTo24k', value: 1),
    RPChoice(text: 'income25kTo34k', value: 2),
    RPChoice(text: 'income35kTo49k', value: 3),
    RPChoice(text: 'income50kTo74k', value: 4),
    RPChoice(text: 'income75kTo99k', value: 5),
    RPChoice(text: 'income100kTo149k', value: 6),
    RPChoice(text: 'income150kTo199k', value: 7),
    RPChoice(text: 'income200kOrMore', value: 8),
  ],
);

final householdIncomeStep = RPQuestionStep(
  identifier: 'householdIncome',
  title: 'householdIncomeQuestion',
  answerFormat: householdIncomeAnswerFormat,
);

final maritalStatusAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'maritalMarried', value: 0),
    RPChoice(text: 'maritalDivorced', value: 1),
    RPChoice(text: 'maritalWidowed', value: 2),
    RPChoice(text: 'maritalSeparated', value: 3),
    RPChoice(text: 'maritalNeverMarried', value: 4),
    RPChoice(text: 'maritalCohabiting', value: 5),
  ],
);

final maritalStatusStep = RPQuestionStep(
  identifier: 'maritalStatus',
  title: 'maritalStatusQuestion',
  answerFormat: maritalStatusAnswerFormat,
);

final educationLevelAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'eduHighSchool', value: 0),
    RPChoice(text: 'eduTechnical', value: 1),
    RPChoice(text: 'eduAssociate', value: 2),
    RPChoice(text: 'eduBachelor', value: 3),
    RPChoice(text: 'eduMasters', value: 4),
    RPChoice(text: 'eduDoctorate', value: 5),
    RPChoice(text: 'eduPostDoctorate', value: 6),
    RPChoice(text: 'eduOther', value: 7),
  ],
);

final educationLevelStep = RPQuestionStep(
  identifier: 'educationLevel',
  title: 'educationLevelQuestion',
  answerFormat: educationLevelAnswerFormat,
);

final educationOtherStep = RPQuestionStep(
  identifier: 'educationOtherSpecify',
  title: 'educationOtherSpecify',
  answerFormat: RPTextAnswerFormat(hintText: 'specifyHint'),
);

final yesNoAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'answerNo', value: 0),
    RPChoice(text: 'answerYes', value: 1),
  ],
);

final currentlyStudyingStep = RPQuestionStep(
  identifier: 'currentlyStudying',
  title: 'currentlyStudyingQuestion',
  answerFormat: yesNoAnswerFormat,
);

final currentAcademicLevelAnswerFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'eduTechnical', value: 0),
    RPChoice(text: 'eduAssociate', value: 1),
    RPChoice(text: 'eduBachelor', value: 2),
    RPChoice(text: 'eduMasters', value: 3),
    RPChoice(text: 'eduDoctorate', value: 4),
    RPChoice(text: 'eduPostDoctorate', value: 5),
    RPChoice(text: 'eduOther', value: 6),
  ],
);

final currentAcademicLevelStep = RPQuestionStep(
  identifier: 'currentAcademicLevel',
  title: 'currentAcademicLevelQuestion',
  answerFormat: currentAcademicLevelAnswerFormat,
);

final academicLevelOtherStep = RPQuestionStep(
  identifier: 'academicLevelOtherSpecify',
  title: 'academicLevelOtherSpecify',
  answerFormat: RPTextAnswerFormat(hintText: 'specifyHint'),
);

final currentlyWorkingStep = RPQuestionStep(
  identifier: 'currentlyWorking',
  title: 'currentlyWorkingQuestion',
  answerFormat: yesNoAnswerFormat,
);

final jobTypeStep = RPQuestionStep(
  identifier: 'jobType',
  title: 'jobTypeQuestion',
  answerFormat: RPTextAnswerFormat(hintText: 'jobTypeHint'),
);

final completionStep = RPCompletionStep(
  identifier: 'surveyCompletion',
  title: 'completionTitle',
  text: 'completionText',
);

final sociodemographicSteps = <RPStep>[
  ageStep,
  biologicalSexStep,
  sexOtherStep,
  genderStep,
  genderOtherStep,
  primaryLanguageStep,
  householdIncomeStep,
  maritalStatusStep,
  educationLevelStep,
  educationOtherStep,
  currentlyStudyingStep,
  currentAcademicLevelStep,
  academicLevelOtherStep,
  currentlyWorkingStep,
  jobTypeStep,
  completionStep,
];

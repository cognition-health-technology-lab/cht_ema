import 'package:research_package/model.dart';

final instructions = RPInstructionStep(
  identifier: 'erq_instructions',
  title: 'erqInstructionsTitle',
  text: 'erqInstructionsBody',
);

final choiceFormat = RPChoiceAnswerFormat(
  answerStyle: RPChoiceAnswerStyle.SingleChoice,
  choices: <RPChoice>[
    RPChoice(text: 'likertStronglyDisagree', value: 1),
    RPChoice(text: 'likertDisagree', value: 2),
    RPChoice(text: 'likertSlightlyDisagree', value: 3),
    RPChoice(text: 'likertNeutral', value: 4),
    RPChoice(text: 'likertSlightlyAgree', value: 5),
    RPChoice(text: 'likertAgree', value: 6),
    RPChoice(text: 'likertStronglyAgree', value: 7),
  ],
);

final erq1 = RPQuestionStep(
  identifier: 'erqCr1',
  title: 'erqCr1',
  answerFormat: choiceFormat,
);
final erq2 = RPQuestionStep(
  identifier: 'erqCr2',
  title: 'erqCr2',
  answerFormat: choiceFormat,
);
final erq3 = RPQuestionStep(
  identifier: 'erqCr3',
  title: 'erqCr3',
  answerFormat: choiceFormat,
);
final erq4 = RPQuestionStep(
  identifier: 'erqSup1',
  title: 'erqSup1',
  answerFormat: choiceFormat,
);
final erq5 = RPQuestionStep(
  identifier: 'erqSup2',
  title: 'erqSup2',
  answerFormat: choiceFormat,
);
final erq6 = RPQuestionStep(
  identifier: 'erqSup3',
  title: 'erqSup3',
  answerFormat: choiceFormat,
);

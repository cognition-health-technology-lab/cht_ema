import 'package:research_package/model.dart';

final instructions = RPInstructionStep(
  identifier: 'erq_ema_instructions',
  title: 'erqEmaInstructionsTitle',
  text: 'erqEmaInstructionsBody',
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
  identifier: 'erq1',
  title: 'erqEmaCr1',
  answerFormat: choiceFormat,
);
final erq2 = RPQuestionStep(
  identifier: 'erq2',
  title: 'erqEmaCr2',
  answerFormat: choiceFormat,
);
final erq3 = RPQuestionStep(
  identifier: 'erq3',
  title: 'erqEmaCr3',
  answerFormat: choiceFormat,
);
final erq4 = RPQuestionStep(
  identifier: 'erq4',
  title: 'erqEmaSup1',
  answerFormat: choiceFormat,
);
final erq5 = RPQuestionStep(
  identifier: 'erq5',
  title: 'erqEmaSup2',
  answerFormat: choiceFormat,
);
final erq6 = RPQuestionStep(
  identifier: 'erq6',
  title: 'erqEmaSup3',
  answerFormat: choiceFormat,
);

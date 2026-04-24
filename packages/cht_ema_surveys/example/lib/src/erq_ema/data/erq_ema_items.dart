import 'package:example_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
import 'package:research_package/model.dart';

List<String> _likertLabels(ChtEmaSurveysLocalization l10n) => <String>[
  l10n.likertStronglyDisagree,
  l10n.likertDisagree,
  l10n.likertSlightlyDisagree,
  l10n.likertNeutral,
  l10n.likertSlightlyAgree,
  l10n.likertAgree,
  l10n.likertStronglyAgree,
];


List<RPStep> erqEmaItems(ChtEmaSurveysLocalization l10n) {
  final labels = _likertLabels(l10n);
  final choiceFormat = RPChoiceAnswerFormat(
    answerStyle: RPChoiceAnswerStyle.SingleChoice,
    choices: <RPChoice>[
      RPChoice(text: labels[0], value: 1),
      RPChoice(text: labels[1], value: 2),
      RPChoice(text: labels[2], value: 3),
      RPChoice(text: labels[3], value: 4),
      RPChoice(text: labels[4], value: 5),
      RPChoice(text: labels[5], value: 6),
      RPChoice(text: labels[6], value: 7),
    ],
  );

  final steps = <RPStep>[
    RPInstructionStep(
      identifier: 'erq_ema_intro',
      title: l10n.erqEmaInstructionsTitle,
      text: l10n.erqEmaInstructionsBody,
    ),

    // ------- Cognitive Reappraisal (CR) -------
    RPQuestionStep(
      identifier: 'erq_cr1',
      title: l10n.erqEmaCr1,
      answerFormat: choiceFormat,
    ),
    RPQuestionStep(
      identifier: 'erq_cr2',
      title: l10n.erqEmaCr2,
      answerFormat: choiceFormat,
    ),
    RPQuestionStep(
      identifier: 'erq_cr3',
      title: l10n.erqEmaCr3,
      answerFormat: choiceFormat,
    ),

    // ------- Expressive Suppression (SUP) -------
    RPQuestionStep(
      identifier: 'erq_sup1',
      title: l10n.erqEmaSup1,
      answerFormat: choiceFormat,
    ),
    RPQuestionStep(
      identifier: 'erq_sup2',
      title: l10n.erqEmaSup2,
      answerFormat: choiceFormat,
    ),
    RPQuestionStep(
      identifier: 'erq_sup3',
      title: l10n.erqEmaSup3,
      answerFormat: choiceFormat,
    ),
  ];

  return steps;
}

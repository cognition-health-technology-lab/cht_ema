import 'package:example_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
import 'package:research_package/model.dart';

enum ErqEmaUiVariant { sliderSimple, multipleChoice, sliderWithLegend }

List<String> _likertLabels(ChtEmaSurveysLocalization l10n) => <String>[
  l10n.likertStronglyDisagree,
  l10n.likertDisagree,
  l10n.likertSlightlyDisagree,
  l10n.likertNeutral,
  l10n.likertSlightlyAgree,
  l10n.likertAgree,
  l10n.likertStronglyAgree,
];

String _likertLegendText(ChtEmaSurveysLocalization l10n) {
  final labels = _likertLabels(l10n);
  return <String>[
    '1 = ${labels[0]}',
    '2 = ${labels[1]}',
    '3 = ${labels[2]}',
    '4 = ${labels[3]}',
    '5 = ${labels[4]}',
    '6 = ${labels[5]}',
    '7 = ${labels[6]}',
  ].join('\n');
}

RPOrderedTask buildErqEmaTask(
  ChtEmaSurveysLocalization l10n, {
  required ErqEmaUiVariant variant,
}) {
  final sliderFormat = RPSliderAnswerFormat(
    minValue: 1,
    maxValue: 7,
    divisions: 6,
  );

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

  final legend = _likertLegendText(l10n);

  RPAnswerFormat answerFormatForVariant() {
    switch (variant) {
      case ErqEmaUiVariant.sliderSimple:
      case ErqEmaUiVariant.sliderWithLegend:
        return sliderFormat;
      case ErqEmaUiVariant.multipleChoice:
        return choiceFormat;
    }
  }

  String taskIdForVariant() {
    switch (variant) {
      case ErqEmaUiVariant.sliderSimple:
        return 'erq_ema_task_slider';
      case ErqEmaUiVariant.multipleChoice:
        return 'erq_ema_task_choice';
      case ErqEmaUiVariant.sliderWithLegend:
        return 'erq_ema_task_slider_legend';
    }
  }

  String? footnoteForVariant() {
    if (variant == ErqEmaUiVariant.sliderWithLegend) return legend;
    return null;
  }

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
      answerFormat: answerFormatForVariant(),
      footnote: footnoteForVariant(),
    ),
    RPQuestionStep(
      identifier: 'erq_cr2',
      title: l10n.erqEmaCr2,
      answerFormat: answerFormatForVariant(),
      footnote: footnoteForVariant(),
    ),
    RPQuestionStep(
      identifier: 'erq_cr3',
      title: l10n.erqEmaCr3,
      answerFormat: answerFormatForVariant(),
      footnote: footnoteForVariant(),
    ),

    // ------- Expressive Suppression (SUP) -------
    RPQuestionStep(
      identifier: 'erq_sup1',
      title: l10n.erqEmaSup1,
      answerFormat: answerFormatForVariant(),
      footnote: footnoteForVariant(),
    ),
    RPQuestionStep(
      identifier: 'erq_sup2',
      title: l10n.erqEmaSup2,
      answerFormat: answerFormatForVariant(),
      footnote: footnoteForVariant(),
    ),
    RPQuestionStep(
      identifier: 'erq_sup3',
      title: l10n.erqEmaSup3,
      answerFormat: answerFormatForVariant(),
      footnote: footnoteForVariant(),
    ),
  ];

  return RPOrderedTask(identifier: taskIdForVariant(), steps: steps);
}

RPOrderedTask buildErqEmaTaskSlider(ChtEmaSurveysLocalization l10n) =>
    buildErqEmaTask(l10n, variant: ErqEmaUiVariant.sliderSimple);

RPOrderedTask buildErqEmaTaskChoice(ChtEmaSurveysLocalization l10n) =>
    buildErqEmaTask(l10n, variant: ErqEmaUiVariant.multipleChoice);

RPOrderedTask buildErqEmaTaskSliderLegend(ChtEmaSurveysLocalization l10n) =>
    buildErqEmaTask(l10n, variant: ErqEmaUiVariant.sliderWithLegend);

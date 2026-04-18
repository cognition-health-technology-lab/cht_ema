import 'package:example_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
import 'package:flutter/material.dart';
import 'package:research_package/model.dart';

enum ErqEmaUiVariant { sliderSimple, multipleChoice, sliderWithLegend }

const String kErqEmaInstructionsStepId = 'erq_ema_instructions';

const double kErqEmaMinValue = 1;
const double kErqEmaMaxValue = 7;
const int kErqEmaDivisions = 6;

String erqItemStepId(String scaleId, int itemId) =>
    'erq_ema_${scaleId}_$itemId';

String erqTaskIdForVariant(ErqEmaUiVariant variant) {
  switch (variant) {
    case ErqEmaUiVariant.sliderSimple:
      return 'erq_ema_task_slider_simple';
    case ErqEmaUiVariant.multipleChoice:
      return 'erq_ema_task_multiple_choice';
    case ErqEmaUiVariant.sliderWithLegend:
      return 'erq_ema_task_slider_with_legend';
  }
}

String variantTitle(ErqEmaUiVariant variant) {
  switch (variant) {
    case ErqEmaUiVariant.sliderSimple:
      return 'ERQ EMA (Slider)';
    case ErqEmaUiVariant.multipleChoice:
      return 'ERQ EMA (Multiple Choice)';
    case ErqEmaUiVariant.sliderWithLegend:
      return 'ERQ EMA (Slider + Legend)';
  }
}

const String kErqLegendText =
    '1 = Strongly disagree\n'
    '2 = Disagree\n'
    '3 = Slightly disagree\n'
    '4 = Neutral\n'
    '5 = Slightly agree\n'
    '6 = Agree\n'
    '7 = Strongly agree';

class ErqEmaItemSpec {
  final String scaleId;
  final int itemId;
  final String text;

  const ErqEmaItemSpec({
    required this.scaleId,
    required this.itemId,
    required this.text,
  });

  String get stepId => erqItemStepId(scaleId, itemId);
}

class ErqEmaItemResponse {
  final String scaleId;
  final int itemId;
  final int value;

  const ErqEmaItemResponse({
    required this.scaleId,
    required this.itemId,
    required this.value,
  });

  @override
  String toString() => '($scaleId$itemId=$value)';
}

List<ErqEmaItemSpec> buildErqEmaItemSpecs(BuildContext context) {
  final l10n = ChtEmaSurveysLocalization.of(context);

  return <ErqEmaItemSpec>[
    // ---------------- Cognitive Reappraisal (CR) ----------------
    ErqEmaItemSpec(scaleId: 'cr', itemId: 1, text: l10n.erqEmaCr1),
    ErqEmaItemSpec(scaleId: 'cr', itemId: 2, text: l10n.erqEmaCr2),
    ErqEmaItemSpec(scaleId: 'cr', itemId: 3, text: l10n.erqEmaCr3),

    // ---------------- Emotional Suppression (SUP) ----------------
    ErqEmaItemSpec(scaleId: 'sup', itemId: 1, text: l10n.erqEmaSup1),
    ErqEmaItemSpec(scaleId: 'sup', itemId: 2, text: l10n.erqEmaSup2),
    ErqEmaItemSpec(scaleId: 'sup', itemId: 3, text: l10n.erqEmaSup3),
  ];
}

RPOrderedTask buildErqEmaSurveyTask(
  BuildContext context, {
  required ErqEmaUiVariant variant,
}) {
  final l10n = ChtEmaSurveysLocalization.of(context);

  final instructionStep = RPInstructionStep(
    identifier: kErqEmaInstructionsStepId,
    title: variantTitle(variant),
    text: l10n.erqEmaInstructionsBody,
  );

  final specs = buildErqEmaItemSpecs(context);

  final sliderFormat = RPSliderAnswerFormat(
    minValue: kErqEmaMinValue,
    maxValue: kErqEmaMaxValue,
    divisions: kErqEmaDivisions,
  );

  final choiceFormat = RPChoiceAnswerFormat(
    answerStyle: RPChoiceAnswerStyle.SingleChoice,
    choices: <RPChoice>[
      RPChoice(text: 'Strongly disagree', value: 1),
      RPChoice(text: 'Disagree', value: 2),
      RPChoice(text: 'Slightly disagree', value: 3),
      RPChoice(text: 'Neutral', value: 4),
      RPChoice(text: 'Slightly agree', value: 5),
      RPChoice(text: 'Agree', value: 6),
      RPChoice(text: 'Strongly agree', value: 7),
    ],
  );

  final steps = <RPStep>[instructionStep];

  for (final s in specs) {
    final RPAnswerFormat answerFormat;
    switch (variant) {
      case ErqEmaUiVariant.sliderSimple:
      case ErqEmaUiVariant.sliderWithLegend:
        answerFormat = sliderFormat;
      case ErqEmaUiVariant.multipleChoice:
        answerFormat = choiceFormat;
    }

    final footnote = (variant == ErqEmaUiVariant.sliderWithLegend)
        ? kErqLegendText
        : null;

    steps.add(
      RPQuestionStep(
        identifier: s.stepId,
        title: s.text,
        answerFormat: answerFormat,
        footnote: footnote,
      ),
    );
  }

  return RPOrderedTask(identifier: erqTaskIdForVariant(variant), steps: steps);
}

List<ErqEmaItemResponse> parseErqEmaResponses(RPTaskResult taskResult) {
  final out = <ErqEmaItemResponse>[];

  const specs = <(String scaleId, int itemId)>[
    ('cr', 1),
    ('cr', 2),
    ('cr', 3),
    ('sup', 1),
    ('sup', 2),
    ('sup', 3),
  ];

  for (final (scaleId, itemId) in specs) {
    final stepId = erqItemStepId(scaleId, itemId);

    final dynamic stepDynamic = taskResult.results[stepId];
    if (stepDynamic is! RPStepResult) continue;

    final dynamic raw = stepDynamic.results[RPStepResult.DEFAULT_KEY];
    final numValue = raw is num ? raw : num.tryParse(raw?.toString() ?? '');
    if (numValue == null) continue;

    out.add(
      ErqEmaItemResponse(
        scaleId: scaleId,
        itemId: itemId,
        value: numValue.round().clamp(1, 7),
      ),
    );
  }

  return out;
}

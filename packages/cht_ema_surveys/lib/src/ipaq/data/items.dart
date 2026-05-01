import 'package:cht_ema_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:research_package/research_package.dart';

/// Builds the list of IPAQ steps using localized strings.
List<RPStep> buildIpaqSteps(BuildContext context) {
  final l10n = ChtEmaSurveysLocalization.of(context);

  final ipaq1 = RPQuestionStep(
    identifier: 'ipaq_vigorous',
    title: l10n.ipaqVigorousQuestionTitle,
    answerFormat: DurationAnswerFormat(),
  );

  final ipaq2 = RPQuestionStep(
    identifier: 'ipaq_moderate',
    title: l10n.ipaqModerateQuestionTitle,
    answerFormat: DurationAnswerFormat(),
  );

  final ipaq3 = RPQuestionStep(
    identifier: 'ipaq_walk',
    title: l10n.ipaqWalkQuestionTitle,
    answerFormat: DurationAnswerFormat(),
  );

  final ipaq4 = RPQuestionStep(
    identifier: 'ipaq_seated',
    title: l10n.ipaqSeatedQuestionTitle,
    answerFormat: DurationAnswerFormat(),
  );

  return <RPStep>[
    RPInstructionStep(
      identifier: 'ipaq_instructions',
      title: l10n.ipaqInstructionsTitle,
      detailText: l10n.ipaqInstructionsBody,
    ),
    ipaq1,
    ipaq2,
    ipaq3,
    ipaq4,
  ];
}

final Map<String, String> questionIcons = {
  'ipaq_vigorous': Mdi.run_fast,
  'ipaq_moderate': Mdi.run,
  'ipaq_walk': Mdi.walk,
  'ipaq_seated': Mdi.seat_recline_normal,
};

final Map<String, List<String>> questionIconsTriple = {
  'ipaq_vigorous': [
    Mdi.run_fast,
    Mdi.weight_lifter,
    Mdi.basketball_hoop,
    Mdi.bike_fast,
  ],
  'ipaq_moderate': [
    Mdi.run,
    Mdi.bicycle,
    Mdi.swim,
  ],
};

final Map<String, Color> questionIconColors = {
  'ipaq_vigorous': Colors.red,
  'ipaq_moderate': Colors.orange,
  'ipaq_walk': Colors.green,
  'ipaq_seated': Colors.purple,
};

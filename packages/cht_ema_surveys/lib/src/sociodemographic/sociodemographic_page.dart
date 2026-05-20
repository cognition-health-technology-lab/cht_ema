import 'package:cht_ema_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
import 'package:flutter/material.dart';
import 'package:research_package/model.dart';
import 'package:research_package/ui.dart';

class SociodemographicPage extends StatelessWidget {
  const SociodemographicPage({super.key});

  RPNavigableOrderedTask _buildTask(BuildContext context) {
    final l10n = ChtEmaSurveysLocalization.of(context);

    final ageStep = RPQuestionStep(
      identifier: 'age',
      title: l10n.ageQuestion,
      answerFormat: RPIntegerAnswerFormat(minValue: 0, maxValue: 120),
    );

    final biologicalSexStep = RPQuestionStep(
      identifier: 'biologicalSex',
      title: l10n.biologicalSexQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.sexMale, value: 0),
          RPChoice(text: l10n.sexFemale, value: 1),
          RPChoice(text: l10n.sexIntersexual, value: 2),
          RPChoice(text: l10n.sexOther, value: 3),
        ],
      ),
    );

    final sexOtherStep = RPQuestionStep(
      identifier: 'sexOtherSpecify',
      title: l10n.sexOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    final genderStep = RPQuestionStep(
      identifier: 'gender',
      title: l10n.genderQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.genderMale, value: 0),
          RPChoice(text: l10n.genderFemale, value: 1),
          RPChoice(text: l10n.genderNonBinary, value: 2),
          RPChoice(text: l10n.genderTransgender, value: 3),
          RPChoice(text: l10n.genderOther, value: 4),
        ],
      ),
    );

    final genderOtherStep = RPQuestionStep(
      identifier: 'genderOtherSpecify',
      title: l10n.genderOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    final primaryLanguageStep = RPQuestionStep(
      identifier: 'primaryLanguage',
      title: l10n.primaryLanguageQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.languageSpanish, value: 0),
          RPChoice(text: l10n.languageEnglish, value: 1),
        ],
      ),
    );

    final householdIncomeStep = RPQuestionStep(
      identifier: 'householdIncome',
      title: l10n.householdIncomeQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.incomeLessThan10k, value: 0),
          RPChoice(text: l10n.income10kTo24k, value: 1),
          RPChoice(text: l10n.income25kTo34k, value: 2),
          RPChoice(text: l10n.income35kTo49k, value: 3),
          RPChoice(text: l10n.income50kTo74k, value: 4),
          RPChoice(text: l10n.income75kTo99k, value: 5),
          RPChoice(text: l10n.income100kTo149k, value: 6),
          RPChoice(text: l10n.income150kTo199k, value: 7),
          RPChoice(text: l10n.income200kOrMore, value: 8),
        ],
      ),
    );

    final maritalStatusStep = RPQuestionStep(
      identifier: 'maritalStatus',
      title: l10n.maritalStatusQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.maritalMarried, value: 0),
          RPChoice(text: l10n.maritalDivorced, value: 1),
          RPChoice(text: l10n.maritalWidowed, value: 2),
          RPChoice(text: l10n.maritalSeparated, value: 3),
          RPChoice(text: l10n.maritalNeverMarried, value: 4),
          RPChoice(text: l10n.maritalCohabiting, value: 5),
        ],
      ),
    );

    final educationLevelStep = RPQuestionStep(
      identifier: 'educationLevel',
      title: l10n.educationLevelQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.eduHighSchool, value: 0),
          RPChoice(text: l10n.eduTechnical, value: 1),
          RPChoice(text: l10n.eduAssociate, value: 2),
          RPChoice(text: l10n.eduBachelor, value: 3),
          RPChoice(text: l10n.eduMasters, value: 4),
          RPChoice(text: l10n.eduDoctorate, value: 5),
          RPChoice(text: l10n.eduPostDoctorate, value: 6),
          RPChoice(text: l10n.eduOther, value: 7),
        ],
      ),
    );

    final educationOtherStep = RPQuestionStep(
      identifier: 'educationOtherSpecify',
      title: l10n.educationOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    final currentlyStudyingStep = RPQuestionStep(
      identifier: 'currentlyStudying',
      title: l10n.currentlyStudyingQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.answerNo, value: 0),
          RPChoice(text: l10n.answerYes, value: 1),
        ],
      ),
    );

    final currentAcademicLevelStep = RPQuestionStep(
      identifier: 'currentAcademicLevel',
      title: l10n.currentAcademicLevelQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.eduTechnical, value: 0),
          RPChoice(text: l10n.eduAssociate, value: 1),
          RPChoice(text: l10n.eduBachelor, value: 2),
          RPChoice(text: l10n.eduMasters, value: 3),
          RPChoice(text: l10n.eduDoctorate, value: 4),
          RPChoice(text: l10n.eduPostDoctorate, value: 5),
          RPChoice(text: l10n.eduOther, value: 6),
        ],
      ),
    );

    final academicLevelOtherStep = RPQuestionStep(
      identifier: 'academicLevelOtherSpecify',
      title: l10n.academicLevelOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    final currentlyWorkingStep = RPQuestionStep(
      identifier: 'currentlyWorking',
      title: l10n.currentlyWorkingQuestion,
      answerFormat: RPChoiceAnswerFormat(
        answerStyle: RPChoiceAnswerStyle.SingleChoice,
        choices: [
          RPChoice(text: l10n.answerNo, value: 0),
          RPChoice(text: l10n.answerYes, value: 1),
        ],
      ),
    );

    final jobTypeStep = RPQuestionStep(
      identifier: 'jobType',
      title: l10n.jobTypeQuestion,
      answerFormat: RPTextAnswerFormat(hintText: l10n.jobTypeHint),
    );

    final completionStep = RPCompletionStep(
      identifier: 'surveyCompletion',
      title: l10n.completionTitle,
      text: l10n.completionText,
    );

    final task = RPNavigableOrderedTask(
      identifier: 'sociodemographicSurvey',
      steps: [
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
      ],
    );

    task
      ..setNavigationRuleForTriggerStepIdentifier(
        RPStepJumpRule(
          answerMap: {
            0: 'gender',
            1: 'gender',
            2: 'gender',
            3: 'sexOtherSpecify',
          },
        ),
        'biologicalSex',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPDirectStepNavigationRule(destinationStepIdentifier: 'gender'),
        'sexOtherSpecify',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPStepJumpRule(
          answerMap: {
            0: 'primaryLanguage',
            1: 'primaryLanguage',
            2: 'primaryLanguage',
            3: 'primaryLanguage',
            4: 'genderOtherSpecify',
          },
        ),
        'gender',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPDirectStepNavigationRule(
          destinationStepIdentifier: 'primaryLanguage',
        ),
        'genderOtherSpecify',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPStepJumpRule(
          answerMap: {
            0: 'currentlyStudying',
            1: 'currentlyStudying',
            2: 'currentlyStudying',
            3: 'currentlyStudying',
            4: 'currentlyStudying',
            5: 'currentlyStudying',
            6: 'currentlyStudying',
            7: 'educationOtherSpecify',
          },
        ),
        'educationLevel',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPDirectStepNavigationRule(
          destinationStepIdentifier: 'currentlyStudying',
        ),
        'educationOtherSpecify',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPStepJumpRule(
          answerMap: {0: 'currentlyWorking', 1: 'currentAcademicLevel'},
        ),
        'currentlyStudying',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPStepJumpRule(
          answerMap: {
            0: 'currentlyWorking',
            1: 'currentlyWorking',
            2: 'currentlyWorking',
            3: 'currentlyWorking',
            4: 'currentlyWorking',
            5: 'currentlyWorking',
            6: 'academicLevelOtherSpecify',
          },
        ),
        'currentAcademicLevel',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPDirectStepNavigationRule(
          destinationStepIdentifier: 'currentlyWorking',
        ),
        'academicLevelOtherSpecify',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPStepJumpRule(answerMap: {0: 'surveyCompletion', 1: 'jobType'}),
        'currentlyWorking',
      )
      ..setNavigationRuleForTriggerStepIdentifier(
        RPDirectStepNavigationRule(
          destinationStepIdentifier: 'surveyCompletion',
        ),
        'jobType',
      );

    return task;
  }

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: _buildTask(context));
  }
}

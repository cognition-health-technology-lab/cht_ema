import 'package:cht_ema_surveys/cht_ema_surveys.dart'
    show ChtEmaSurveysLocalization;
import 'package:flutter/material.dart';
import 'package:research_package/model.dart';
import 'package:research_package/ui.dart';

class SociodemographicPage extends StatelessWidget {
  const SociodemographicPage({super.key});

  RPNavigableOrderedTask _buildTask(BuildContext context) {
    final l10n = ChtEmaSurveysLocalization.of(context);

    // ── Steps ──────────────────────────────────────────────────────────────

    // Q1: Age
    final ageStep = RPQuestionStep(
      identifier: 'age',
      title: l10n.ageQuestion,
      answerFormat: RPIntegerAnswerFormat(minValue: 0, maxValue: 120),
    );

    // Q2: Biological sex
    // Values: 0=male, 1=female, 2=intersexual, 3=other
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

    // Q2b: Biological sex — other, specify (shown only if Q2 = 3)
    final sexOtherStep = RPQuestionStep(
      identifier: 'sexOtherSpecify',
      title: l10n.sexOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    // Q3: Gender identity
    // Values: 0=male, 1=female, 2=non-binary, 3=transgender, 4=other
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

    // Q3b: Gender — other, specify (shown only if Q3 = 4)
    final genderOtherStep = RPQuestionStep(
      identifier: 'genderOtherSpecify',
      title: l10n.genderOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    // Q4: Primary language
    // Values: 0=spanish, 1=english
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

    // Q5: Household income
    // Values: 0–8 in ascending bracket order
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

    // Q6: Marital status
    // Values: 0=married, 1=divorced, 2=widowed, 3=separated, 4=never, 5=cohabiting
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

    // Q7: Highest education level completed
    // Values: 0=high school, 1=technical, 2=associate, 3=bachelor,
    //         4=masters, 5=doctorate, 6=post-doc, 7=other
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

    // Q7b: Education — other, specify (shown only if Q7 = 7)
    final educationOtherStep = RPQuestionStep(
      identifier: 'educationOtherSpecify',
      title: l10n.educationOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    // Q8: Currently studying?
    // Values: 0=no, 1=yes
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

    // Q8b: Current academic level (shown only if Q8 = 1)
    // Values: 0=technical, 1=associate, 2=bachelor, 3=masters,
    //         4=doctorate, 5=post-doc, 6=other
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

    // Q8b-other: Academic level — other, specify (shown only if Q8b = 6)
    final academicLevelOtherStep = RPQuestionStep(
      identifier: 'academicLevelOtherSpecify',
      title: l10n.academicLevelOtherSpecify,
      answerFormat: RPTextAnswerFormat(hintText: l10n.specifyHint),
    );

    // Q9: Currently working?
    // Values: 0=no, 1=yes
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

    // Q9b: Job type — specify (shown only if Q9 = 1)
    final jobTypeStep = RPQuestionStep(
      identifier: 'jobType',
      title: l10n.jobTypeQuestion,
      answerFormat: RPTextAnswerFormat(hintText: l10n.jobTypeHint),
    );

    // Completion
    final completionStep = RPCompletionStep(
      identifier: 'surveyCompletion',
      title: l10n.completionTitle,
      text: l10n.completionText,
    );

    // ── Task ──────────────────────────────────────────────────────────────

    final task = RPNavigableOrderedTask(
      identifier: 'sociodemographicSurvey',
      steps: [
        ageStep, // Q1
        biologicalSexStep, // Q2
        sexOtherStep, // Q2b — skipped unless Q2 = 3
        genderStep, // Q3
        genderOtherStep, // Q3b — skipped unless Q3 = 4
        primaryLanguageStep, // Q4
        householdIncomeStep, // Q5
        maritalStatusStep, // Q6
        educationLevelStep, // Q7
        educationOtherStep, // Q7b — skipped unless Q7 = 7
        currentlyStudyingStep, // Q8
        currentAcademicLevelStep, // Q8b — skipped unless Q8 = 1
        academicLevelOtherStep, // Q8b-other — skipped unless Q8b = 6
        currentlyWorkingStep, // Q9
        jobTypeStep, // Q9b — skipped unless Q9 = 1
        completionStep,
      ],
    );

    // ── Navigation rules ──────────────────────────────────────────────────
    //
    // RPStepJumpRule.answerMap maps int choice values to destination step
    // identifiers. Any value NOT in the map falls through to the next step
    // in order via returnNextQuestion(). We must map ALL non-branching values
    // explicitly to skip over the conditional "specify" steps.
    //
    // RPDirectStepNavigationRule always jumps to a fixed step regardless of
    // answer, used to rejoin the main flow after a "specify" step.

    // Q2: value 3 (other) → Q2b; all others skip Q2b → Q3
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(
        answerMap: {
          0: 'gender',
          1: 'gender',
          2: 'gender',
          3: 'sexOtherSpecify',
        },
      ),
      'biologicalSex',
    );

    // Q2b → Q3 (always)
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(destinationStepIdentifier: 'gender'),
      'sexOtherSpecify',
    );

    // Q3: value 4 (other) → Q3b; all others skip Q3b → Q4
    task.setNavigationRuleForTriggerStepIdentifier(
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
    );

    // Q3b → Q4 (always)
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(destinationStepIdentifier: 'primaryLanguage'),
      'genderOtherSpecify',
    );

    // Q7: value 7 (other) → Q7b; all others skip Q7b → Q8
    task.setNavigationRuleForTriggerStepIdentifier(
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
    );

    // Q7b → Q8 (always)
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(
        destinationStepIdentifier: 'currentlyStudying',
      ),
      'educationOtherSpecify',
    );

    // Q8: value 1 (yes) → Q8b; value 0 (no) skips Q8b and Q8b-other → Q9
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(
        answerMap: {0: 'currentlyWorking', 1: 'currentAcademicLevel'},
      ),
      'currentlyStudying',
    );

    // Q8b: value 6 (other) → Q8b-other; all others skip Q8b-other → Q9
    task.setNavigationRuleForTriggerStepIdentifier(
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
    );

    // Q8b-other → Q9 (always)
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(destinationStepIdentifier: 'currentlyWorking'),
      'academicLevelOtherSpecify',
    );

    // Q9: value 1 (yes) → Q9b; value 0 (no) skips Q9b → completion
    task.setNavigationRuleForTriggerStepIdentifier(
      RPStepJumpRule(answerMap: {0: 'surveyCompletion', 1: 'jobType'}),
      'currentlyWorking',
    );

    // Q9b → completion (always)
    task.setNavigationRuleForTriggerStepIdentifier(
      RPDirectStepNavigationRule(destinationStepIdentifier: 'surveyCompletion'),
      'jobType',
    );

    return task;
  }

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: _buildTask(context));
  }
}

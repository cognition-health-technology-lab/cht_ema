import 'package:cht_ema_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
import 'package:cht_ema_surveys/src/ipaq/data/custom_answer_result.dart';
import 'package:cht_ema_surveys/src/ipaq/data/items.dart';
import 'package:cht_ema_surveys/src/ipaq/presentation/widgets/custom_duration_question_body.dart';
import 'package:cht_ema_surveys/src/ipaq/presentation/widgets/duration_answer_format.dart';
import 'package:cht_ema_surveys/src/ipaq/presentation/widgets/wheel_answer_format.dart'
    as wheel_widgets;
import 'package:cht_ema_surveys/src/ipaq/presentation/widgets/wheel_answer_format.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:research_package/model.dart';

class CustomTaskWidget extends StatefulWidget {
  final RPOrderedTask task;
  final void Function(RPTaskResult) onSubmit;

  const CustomTaskWidget({
    required this.task,
    required this.onSubmit,
    super.key,
  });

  @override
  State<CustomTaskWidget> createState() => _CustomTaskWidgetState();
}

class _CustomTaskWidgetState extends State<CustomTaskWidget> {
  int _currentStepIndex = 0;

  final RPTaskResult _taskResult = RPTaskResult(identifier: 'custom_task');

  /// Local cache of answers per step identifier so that navigating
  /// backwards can restore the previously selected value.
  final Map<String, dynamic> _answers = <String, dynamic>{};

  dynamic _currentAnswer;

  void _nextStep() {
    final currentStep = widget.task.steps[_currentStepIndex];

    // Cache the current answer for back navigation.
    if (_currentAnswer != null) {
      _answers[currentStep.identifier] = _currentAnswer;
    } else {
      _answers.remove(currentStep.identifier);
    }

    final stepResult = CustomAnswerResult(
      identifier: currentStep.identifier,
      answer: _currentAnswer,
    );
    _taskResult.setStepResultForIdentifier(
      currentStep.identifier,
      stepResult,
    );

    if (_currentStepIndex + 1 >= widget.task.steps.length) {
      // Last step: submit the entire task result.
      widget.onSubmit(_taskResult);
    } else {
      setState(() {
        // Move to next step and clear current answer so the new
        // question starts in a "fresh" state.
        _currentStepIndex++;
        _currentAnswer = null;
      });
    }
  }

  void _previousStep() {
    if (_currentStepIndex > 0) {
      setState(() {
        _currentStepIndex--;

        final prevStep = widget.task.steps[_currentStepIndex];
        // Restore the previously given answer for this step, if any.
        _currentAnswer = _answers[prevStep.identifier];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = ChtEmaSurveysLocalization.of(context);
    final step = widget.task.steps[_currentStepIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          step is RPInstructionStep
              ? step.title
              : 'Pregunta $_currentStepIndex',
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 217, 217, 217),
      ),

      // Only the content scrolls; buttons are pinned to the bottom.
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (step is RPInstructionStep) ...[
                Text(
                  step.detailText ?? '',
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ] else if (step is RPQuestionStep &&
                  step.answerFormat is DurationAnswerFormat) ...[
                _QuestionTitleWithIcon(
                  title: step.title,
                  identifier: step.identifier,
                ),
                CustomRPUIDateTimeQuestionBody(
                  key: ValueKey(step.identifier),
                  answerFormat: step.answerFormat as DurationAnswerFormat,
                  // When navigating back, restore the previous duration.
                  initialDuration: _currentAnswer is Duration
                      ? _currentAnswer as Duration
                      : _answers[step.identifier] is Duration
                      ? _answers[step.identifier] as Duration
                      : null,
                  onResultChange: (val) {
                    setState(() => _currentAnswer = val);
                  },
                ),
              ] else if (step is RPQuestionStep &&
                  step.answerFormat is WheelAnswerFormat) ...[
                _QuestionTitleWithIcon(
                  title: step.title,
                  identifier: step.identifier,
                ),
                wheel_widgets.WheelQuestionBody(
                  key: ValueKey(step.identifier),
                  answerFormat:
                      step.answerFormat as wheel_widgets.WheelAnswerFormat,
                  // Restore previously selected value when going back.
                  initialValue: _currentAnswer is int
                      ? _currentAnswer as int
                      : _answers[step.identifier] is int
                      ? _answers[step.identifier] as int
                      : null,
                  onResultChange: (val) {
                    setState(() {
                      _currentAnswer = val;
                    });
                  },
                ),
              ],
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),

      // Buttons anchored at the bottom, outside the scroll.
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: _currentStepIndex > 0 ? _previousStep : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 115, 115),
                    foregroundColor: Colors.black,
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    l10n.backButtonLabel,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed:
                      (step is RPInstructionStep || _currentAnswer != null)
                      ? _nextStep
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 163, 255, 115),
                    foregroundColor: Colors.black,
                    minimumSize: const Size.fromHeight(50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    l10n.nextButtonLabel,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuestionTitleWithIcon extends StatelessWidget {
  final String title;
  final String identifier;

  const _QuestionTitleWithIcon({
    required this.title,
    required this.identifier,
  });

  @override
  Widget build(BuildContext context) {
    // If this identifier has a triple icon entry, use it; otherwise single.
    final triple = questionIconsTriple[identifier];

    final single = questionIcons[identifier] ?? Mdi.help_circle;
    final color = questionIconColors[identifier] ?? Colors.blueAccent;

    return Column(
      children: [
        if (triple != null && triple.isNotEmpty)
          _TripleIconHeader(icons: triple, color: color)
        else
          _SingleIconHeader(iconName: single, color: color),
        const SizedBox(height: 16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _SingleIconHeader extends StatelessWidget {
  final String iconName;
  final Color color;

  const _SingleIconHeader({
    required this.iconName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 76,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withValues(alpha: 0.15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Iconify(iconName, size: 46, color: color),
      ),
    );
  }
}

class _TripleIconHeader extends StatelessWidget {
  final List<String> icons;
  final Color color;

  const _TripleIconHeader({
    required this.icons,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final display = icons.take(4).toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: display
          .map(
            (name) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withValues(alpha: 0.12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Iconify(name, size: 36, color: color),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

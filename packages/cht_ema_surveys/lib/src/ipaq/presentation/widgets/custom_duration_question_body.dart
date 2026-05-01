import 'package:cht_ema_surveys/src/ipaq/presentation/widgets/custom_duration_picker.dart';
import 'package:cht_ema_surveys/src/ipaq/presentation/widgets/duration_answer_format.dart';
import 'package:flutter/material.dart';

class CustomRPUIDateTimeQuestionBody extends StatefulWidget {
  final DurationAnswerFormat answerFormat;
  final void Function(Duration) onResultChange;
  final Duration? initialDuration;

  const CustomRPUIDateTimeQuestionBody({
    required this.answerFormat,
    required this.onResultChange,
    this.initialDuration,
    super.key,
  });

  @override
  State<CustomRPUIDateTimeQuestionBody> createState() =>
      _CustomRPUIDateTimeQuestionBodyState();
}

class _CustomRPUIDateTimeQuestionBodyState
    extends State<CustomRPUIDateTimeQuestionBody> {
  late Duration _duration;

  @override
  void initState() {
    super.initState();
    _duration = widget.initialDuration ?? Duration.zero;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: CustomDurationPicker(
        initialDuration: _duration,
        maxHours: widget.answerFormat.maxHours,
        maxMinutes: widget.answerFormat.maxMinutes,
        onDurationChanged: (newDuration) {
          setState(() => _duration = newDuration);
          widget.onResultChange(newDuration);
        },
      ),
    );
  }
}

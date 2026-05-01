import 'package:flutter/material.dart';
import 'package:research_package/model.dart';

class DurationAnswerFormat extends RPAnswerFormat {
  final int maxHours;
  final int maxMinutes;

  DurationAnswerFormat({this.maxHours = 23, this.maxMinutes = 59});

  String get identifier => 'duration';
}

class WheelQuestionBody extends StatefulWidget {
  final DurationAnswerFormat answerFormat;
  final void Function(Duration) onResultChange;

  const WheelQuestionBody({
    required this.answerFormat,
    required this.onResultChange,
    super.key,
  });

  @override
  WheelQuestionBodyState createState() => WheelQuestionBodyState();
}

class WheelQuestionBodyState extends State<WheelQuestionBody> {
  int selectedHour = 0;
  int selectedMinute = 0;

  void _notifyChange() {
    final duration = Duration(hours: selectedHour, minutes: selectedMinute);
    widget.onResultChange(duration);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildWheel(widget.answerFormat.maxHours + 1, 'h', (v) {
          setState(() => selectedHour = v);
          _notifyChange();
        }),
        const SizedBox(width: 16),
        _buildWheel(widget.answerFormat.maxMinutes + 1, 'm', (v) {
          setState(() => selectedMinute = v);
          _notifyChange();
        }),
      ],
    );
  }

  Widget _buildWheel(int count, String label, ValueChanged<int> onChanged) {
    return SizedBox(
      height: 150,
      width: 80,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 40,
        onSelectedItemChanged: onChanged,
        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: count,
          builder: (context, index) {
            return Center(
              child: Text('$index$label', style: const TextStyle(fontSize: 24)),
            );
          },
        ),
      ),
    );
  }
}

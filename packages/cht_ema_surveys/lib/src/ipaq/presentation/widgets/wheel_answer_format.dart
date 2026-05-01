import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:research_package/model.dart';

class WheelAnswerFormat extends RPAnswerFormat {
  final List<int> choices;

  WheelAnswerFormat({required this.choices});
}

class WheelQuestionBody extends StatefulWidget {
  final WheelAnswerFormat answerFormat;
  final void Function(dynamic) onResultChange;

  /// Optional previously selected value for this question.
  /// If provided and found in [answerFormat.choices], the wheel will
  /// start on that value (used when navigating back to a question).
  final int? initialValue;

  const WheelQuestionBody({
    required this.answerFormat,
    required this.onResultChange,
    this.initialValue,
    super.key,
  });

  @override
  State<WheelQuestionBody> createState() => _WheelQuestionBodyState();
}

class _WheelQuestionBodyState extends State<WheelQuestionBody> {
  late final FixedExtentScrollController _controller;

  void _feedback() {
    // Use `unawaited` so we don't get discarded_futures warnings.
    unawaited(SystemSound.play(SystemSoundType.click));
    unawaited(HapticFeedback.heavyImpact());
  }

  @override
  void initState() {
    super.initState();

    var initialIndex = 0;
    final initialVal = widget.initialValue;
    if (initialVal != null) {
      final idx = widget.answerFormat.choices.indexOf(initialVal);
      if (idx != -1) {
        initialIndex = idx;
      }
    }

    _controller = FixedExtentScrollController(initialItem: initialIndex);
  }

  @override
  void didUpdateWidget(covariant WheelQuestionBody oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialValue != widget.initialValue) {
      var initialIndex = 0;
      final initialVal = widget.initialValue;
      if (initialVal != null) {
        final idx = widget.answerFormat.choices.indexOf(initialVal);
        if (idx != -1) {
          initialIndex = idx;
        }
      }
      _controller.jumpToItem(initialIndex);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: CupertinoPicker(
        // 🔧 FIX: it's `scrollController`, not `controller`
        scrollController: _controller,
        itemExtent: 50,
        useMagnifier: true,
        magnification: 1.6,
        squeeze: 1,
        selectionOverlay: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // Use withValues to avoid deprecation warning
            color: Colors.grey.withValues(alpha: 0.25),
          ),
        ),
        onSelectedItemChanged: (index) {
          widget.onResultChange(widget.answerFormat.choices[index]);
          _feedback();
        },
        children: List.generate(
          widget.answerFormat.choices.length,
          (index) => Center(
            child: Text(
              widget.answerFormat.choices[index].toString(),
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:cht_ema_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomDurationPicker extends StatefulWidget {
  final Duration initialDuration;
  final ValueChanged<Duration> onDurationChanged;
  final int maxHours;
  final int maxMinutes;

  const CustomDurationPicker({
    required this.initialDuration,
    required this.onDurationChanged,
    super.key,
    this.maxHours = 23,
    this.maxMinutes = 59,
  });

  @override
  State<CustomDurationPicker> createState() => _CustomDurationPickerState();
}

class _CustomDurationPickerState extends State<CustomDurationPicker> {
  late int selectedHours;
  late int selectedMinutes;

  late FixedExtentScrollController _hoursController;
  late FixedExtentScrollController _minutesController;

  int _effectiveMax(int max) => max < 0 ? 0 : max;

  @override
  void initState() {
    super.initState();
    final maxHours = _effectiveMax(widget.maxHours);
    final maxMinutes = _effectiveMax(widget.maxMinutes);

    selectedHours = widget.initialDuration.inHours.clamp(0, maxHours);
    selectedMinutes = (widget.initialDuration.inMinutes % 60).clamp(
      0,
      maxMinutes,
    );

    _hoursController = FixedExtentScrollController(initialItem: selectedHours);
    _minutesController = FixedExtentScrollController(
      initialItem: selectedMinutes,
    );
  }

  @override
  void dispose() {
    _hoursController.dispose();
    _minutesController.dispose();
    super.dispose();
  }

  void _updateDuration() {
    final duration = Duration(hours: selectedHours, minutes: selectedMinutes);
    widget.onDurationChanged(duration);
  }

  Future<void> _feedback() async {
    await SystemSound.play(SystemSoundType.click);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = ChtEmaSurveysLocalization.of(context);

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPicker(
            label: l10n.hoursLabel,
            value: selectedHours,
            max: _effectiveMax(widget.maxHours),
            controller: _hoursController,
            onChanged: (index) async {
              setState(() => selectedHours = index);
              _updateDuration();
              await _feedback();
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              ':',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
          ),
          _buildPicker(
            label: l10n.minutesLabel,
            value: selectedMinutes,
            max: _effectiveMax(widget.maxMinutes),
            controller: _minutesController,
            onChanged: (index) async {
              setState(() => selectedMinutes = index);
              _updateDuration();
              await _feedback();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPicker({
    required String label,
    required int value,
    required int max,
    required FixedExtentScrollController controller,
    required ValueChanged<int> onChanged,
  }) {
    return Expanded(
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: CupertinoPicker(
              scrollController: controller,
              itemExtent: 45,
              useMagnifier: true,
              magnification: 1.05,
              onSelectedItemChanged: onChanged,
              children: List<Widget>.generate(
                max + 1,
                (index) => Center(
                  child: Text(
                    index.toString().padLeft(2, '0'),
                    style: const TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

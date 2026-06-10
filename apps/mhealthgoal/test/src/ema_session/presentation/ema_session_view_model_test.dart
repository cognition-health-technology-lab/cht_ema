import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mhealthgoal/src/ema_session/presentation/ema_session_view_model.dart';

void main() {
  late EmaSessionViewModel viewModel;

  setUp(() {
    viewModel = EmaSessionViewModel();
  });

  group('EmaSessionViewModel.init', () {
    test('currentTask returns a widget', () {
      viewModel.init();
      expect(viewModel.currentTask, isA<Widget>());
    });
  });
}

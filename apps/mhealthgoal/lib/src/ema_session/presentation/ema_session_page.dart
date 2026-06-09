import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/ema_session/presentation/ema_session_view_model.dart';

/// todo - add general instructions page?

class EmaSessionPage extends StatelessWidget {
  final VoidCallback _onFinished;
  final _viewModel = EmaSessionViewModel();

  EmaSessionPage({required VoidCallback onFinished, super.key})
    : _onFinished = onFinished;

  // TODO - init vm notifier

  // todo - dispose of vm notifier

  @override
  Widget build(BuildContext context) {
    /// todo - adapt to actual impl
    return const Scaffold(body: Center(child: Text('EMA Session Page')));
  }
}

import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/ema_session/presentation/ema_session_view_model.dart';

/// todo - add general instructions page?

class EmaSessionPage extends StatefulWidget {
  final VoidCallback _onFinished;

  EmaSessionPage({required VoidCallback onFinished, super.key})
    : _onFinished = onFinished;

  @override
  State<EmaSessionPage> createState() => _EmaSessionPageState();
}

class _EmaSessionPageState extends State<EmaSessionPage> {
  final _viewModel = EmaSessionViewModel();

  // TODO - init vm notifier
  @override
  Widget build(BuildContext context) {
    /// todo - adapt to actual impl
    return const Scaffold(body: Center(child: Text('EMA Session Page')));
  }
}

import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/ema_session/presentation/ema_session_view_model.dart';

/// todo - add general instructions page?

class EmaSessionPage extends StatefulWidget {
  final VoidCallback _onFinished;

  const EmaSessionPage({required VoidCallback onFinished, super.key})
    : _onFinished = onFinished;

  @override
  State<EmaSessionPage> createState() => _EmaSessionPageState();
}

class _EmaSessionPageState extends State<EmaSessionPage> {
  final _viewModel = EmaSessionViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.init();
  }

  @override
  Widget build(BuildContext context) {
    if (_viewModel.isFinished) {
      widget._onFinished();
    }
    return _viewModel.currentTask.build();
  }
}

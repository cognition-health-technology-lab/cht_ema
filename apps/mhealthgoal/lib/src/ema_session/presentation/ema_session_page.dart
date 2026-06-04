import 'package:flutter/material.dart';
import 'package:mhealthgoal/src/ema_session/presentation/ema_session_view_model.dart';

class EmaSessionPage extends StatelessWidget {
  final viewModel = EmaSessionViewModel();

  EmaSessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('EMA Session Page')));
  }
}

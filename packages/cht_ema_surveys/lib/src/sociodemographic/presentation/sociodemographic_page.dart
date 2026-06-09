import 'package:cht_ema_surveys/src/sociodemographic/presentation/sociodemographic_view_model.dart';
import 'package:flutter/material.dart';
import 'package:research_package/ui.dart';

class SociodemographicPage extends StatelessWidget {
  final _viewModel = SociodemographicViewModel();

  SociodemographicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: _viewModel.task);
  }
}

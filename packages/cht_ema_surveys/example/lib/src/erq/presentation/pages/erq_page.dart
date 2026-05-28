import 'package:example_surveys/src/erq/presentation/view_model/erq_view_model.dart';
import 'package:flutter/material.dart';
import 'package:research_package/ui.dart';

class ErqPage extends StatelessWidget {
  final _viewModel = ErqViewModel();
  ErqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RPUITask(task: _viewModel.task);
  }
}

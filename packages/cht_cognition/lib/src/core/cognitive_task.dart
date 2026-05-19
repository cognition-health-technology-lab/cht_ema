import 'package:cht_cognition/src/core/after_task_navigator_definition.dart';
import 'package:cht_cognition/src/core/finished_page.dart';
import 'package:cht_cognition/src/core/instructions_page.dart';
import 'package:cht_cognition/src/core/page_builder_definitions.dart';
import 'package:cht_cognition/src/core/rest_page.dart';
import 'package:cht_cognition/src/core/state/cognitive_task_state.dart';
import 'package:cht_cognition/src/core/trials/iti_page.dart';
import 'package:cht_cognition/src/core/trials/on_trial_callback_definition.dart';
import 'package:cht_cognition/src/core/view_model.dart';
import 'package:flutter/material.dart';

abstract class CognitiveTask<T> extends StatefulWidget {
  final AfterTaskNavigator? navigateAfterTask;
  final PageBuilder? instructionsPageBuilder;
  final PageBuilder? restPageBuilder;
  final PageBuilder? finishedPageBuilder;
  final ViewModel<T> _viewModel;

  const CognitiveTask({
    required ViewModel<T> viewModel,
    super.key,
    this.navigateAfterTask,
    this.instructionsPageBuilder,
    this.restPageBuilder,
    this.finishedPageBuilder,
  }) : _viewModel = viewModel;

  Widget buildTrialPage({
    required BuildContext context,
    required T trial,
    required OnTrialCallback onFinished,
    required int trialNumber,
  });

  Widget buildInstructionsPage({
    required BuildContext context,
    required VoidCallback onFinished,
  }) {
    if (instructionsPageBuilder != null) {
      return instructionsPageBuilder!(
        context: context,
        onFinished: onFinished,
      );
    }
    return InstructionsPage(onFinished: onFinished);
  }

  Widget buildItiPage({required BuildContext context}) {
    return const ITIPage();
  }

  Widget buildRestPage({
    required BuildContext context,
    required VoidCallback onFinished,
  }) {
    if (restPageBuilder != null) {
      return restPageBuilder!(
        context: context,
        onFinished: onFinished,
      );
    }
    return RestPage(onFinished: onFinished);
  }

  Widget buildFinishedPage({
    required BuildContext context,
    required VoidCallback onFinished,
  }) {
    if (finishedPageBuilder != null) {
      return finishedPageBuilder!(
        context: context,
        onFinished: onFinished,
      );
    }
    return FinishedPage(onFinished: onFinished);
  }

  void _navigateAfterTask(BuildContext context) {
    if (navigateAfterTask == null) {
      Navigator.of(context).pop();
    } else {
      navigateAfterTask!.call(context);
    }
  }

  @override
  State<CognitiveTask<T>> createState() => _CognitiveTaskState();
}

class _CognitiveTaskState<T> extends State<CognitiveTask<T>> {
  @override
  void initState() {
    super.initState();
    widget._viewModel.init();
    widget._viewModel.addListener(updateUI);
  }

  @override
  void dispose() {
    widget._viewModel.removeListener(updateUI);
    widget._viewModel.dispose();
    super.dispose();
  }

  void updateUI() {
    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final state = widget._viewModel.state;

    return state.when(
      instructions: () => widget.buildInstructionsPage(
        context: context,
        onFinished: widget._viewModel.onInstructions,
      ),

      trial: (trial) => widget.buildTrialPage(
        context: context,
        trial: trial,
        onFinished: widget._viewModel.onTrial,
        trialNumber: widget._viewModel.trialNumber,
      ),

      iti: () => widget.buildItiPage(context: context),

      rest: () => widget.buildRestPage(
        context: context,
        onFinished: widget._viewModel.onRest,
      ),

      processing: () => const Center(
        child: CircularProgressIndicator(),
      ),

      finished: () => widget.buildFinishedPage(
        context: context,
        onFinished: () => widget._navigateAfterTask(context),
      ),
    );
  }
}

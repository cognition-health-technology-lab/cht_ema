import 'package:cht_ema_surveys/src/ipaq/presentation/ipaq_viewmodel.dart';
import 'package:cht_ema_surveys/src/ipaq/presentation/widgets/custom_task_widget.dart';
import 'package:flutter/material.dart';

class IPAQPage extends StatelessWidget {
  final IPAQViewModel viewModel = IPAQViewModel();
  final void Function(BuildContext context) navigateOnFinish;

  IPAQPage({
    required this.navigateOnFinish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTaskWidget(
      task: viewModel.buildTask(context),
      onSubmit: (result) async {
        viewModel.saveData(result);
        await viewModel.closeIpaqPage();
        // Context is valid here since closeIpaqPage has no async gap that outlives it.
        // ignore: use_build_context_synchronously
        navigateOnFinish(context);
      },
    );
  }
}

import 'package:cht_ema_surveys/src/ipaq/data/items.dart';
import 'package:flutter/material.dart';
import 'package:research_package/model.dart';

class IPAQViewModel {
  RPOrderedTask buildTask(BuildContext context) => RPOrderedTask(
    identifier: 'ipaq_task',
    steps: buildIpaqSteps(context),
    closeAfterFinished: false,
  );

  Future<void> closeIpaqPage() async {}

  void saveData(RPTaskResult results) {}
}

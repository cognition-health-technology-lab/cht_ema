import 'package:flutter/material.dart';

typedef PageBuilder =
    Widget Function({
      required BuildContext context,
      required VoidCallback onFinished,
    });

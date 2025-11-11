import 'package:flutter/material.dart';

class CenteredPage extends StatelessWidget {
  final List<Widget> child;

  const CenteredPage({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: child,
        ),
      ),
    );
  }
}

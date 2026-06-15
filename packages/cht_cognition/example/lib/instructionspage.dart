import 'package:flutter/material.dart';

class Instructionspage extends StatelessWidget {
  const Instructionspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instructions')),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Press the screen when you see green, but don't press when you see red.",
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Start Task'),
            ),
          ],
        ),
      ),
    );
  }
}

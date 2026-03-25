import 'package:flutter/material.dart';

export 'package:cht_ema_surveys/src/core/l10n/cht_rp_localization_loader.dart';
export 'package:cht_ema_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';

class RestMessageScreen extends StatelessWidget {
  const RestMessageScreen({
    required this.message,
    required this.onContinue,
    super.key,
    this.title = 'Rest',
    this.buttonText = 'Continue',
  });

  final String title;
  final String message;
  final String buttonText;

  /// Parent decides what "next step" means (push next route, resume task, etc.)
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title, style: theme.textTheme.headlineSmall),
              const SizedBox(height: 16),
              Expanded(
                child: Center(
                  child: Text(
                    message,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: onContinue,
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

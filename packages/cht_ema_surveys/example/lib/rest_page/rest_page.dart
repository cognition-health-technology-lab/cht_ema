import 'package:flutter/material.dart';

export 'package:cht_ema_surveys/src/core/l10n/cht_rp_localization_loader.dart';
export 'package:cht_ema_surveys/src/core/l10n/generated/cht_ema_surveys_localization.dart';

const double _restMessageFontSize = 32;

class RestMessageScreen extends StatelessWidget {
  const RestMessageScreen({
    required this.onContinue,
    super.key,
    this.title = 'mHealth',
    this.buttonText = 'Continue',
    this.message = 'Rest',
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        message,
                        textAlign: TextAlign.center,
                        style:
                            (theme.textTheme.titleMedium ?? const TextStyle())
                                .copyWith(fontSize: _restMessageFontSize),
                      ),
                      const SizedBox(height: 24),
                      const _RestIconBadge(),
                    ],
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

class _RestIconBadge extends StatelessWidget {
  const _RestIconBadge();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Semantics(
      label: 'Rest reminder',
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 112,
            height: 112,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorScheme.primaryContainer,
              border: Border.all(color: colorScheme.outlineVariant, width: 2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 18,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Icon(
              Icons.schedule_rounded,
              size: 56,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
          Positioned(
            right: -2,
            bottom: 6,
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme.secondaryContainer,
                border: Border.all(color: colorScheme.surface, width: 3),
              ),
              child: Icon(
                Icons.auto_awesome_rounded,
                size: 18,
                color: colorScheme.onSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

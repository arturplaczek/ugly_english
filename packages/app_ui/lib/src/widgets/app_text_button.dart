import 'package:flutter/material.dart';

/// {@template app_text_button}
/// Text button displayed in the application.
/// {@endtemplate}
class AppTextButton extends StatelessWidget {
  /// {@macro app_text_button}
  const AppTextButton({
    required this.child,
    super.key,
    this.onPressed,
  });

  /// [VoidCallback] called when button is pressed.
  /// Button is disabled when null.
  final VoidCallback? onPressed;

  /// [Widget] displayed on the button.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(),
      child: child,
    );
  }
}

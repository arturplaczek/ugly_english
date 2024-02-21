import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_logo}
/// Logo for the app.
/// {@endtemplate}
class AppLogo extends StatelessWidget {
  /// {@macro app_logo}
  const AppLogo({
    super.key,
    this.width,
    this.height,
  });

  /// Width of the logo.
  final double? width;

  /// Height of the logo.
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
        vertical: AppSpacing.xxs,
      ),
      child: Assets.icons.uglyEnglishLogo.image(
        height: height ?? 50,
        width: width ?? 50,
        fit: BoxFit.fill,
      ),
    );
  }
}

import 'dart:ui';

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_loading_overlay}
/// A widget that displays a loading indicator over the entire screen.
/// {@endtemplate}
class AppLoadingOverlay extends StatelessWidget {
  /// {@macro app_loading_overlay}
  const AppLoadingOverlay({
    required this.child,
    required this.isLoading,
    super.key,
  });

  /// The widget on which the loading indicator is displayed.
  final Widget child;

  /// Whether the loading indicator is displayed.
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        AnimatedSwitcher(
          duration: kThemeAnimationDuration,
          child: isLoading
              ? const AppLoader(
                  key: Key('AppLoadingOverlay_Loader'),
                )
              : const SizedBox.expand(
                  key: Key('AppLoadingOverlay_NoLoader'),
                ),
        ),
      ],
    );
  }
}

/// {@template app_loader}
/// A widget that displays a loading indicator.
/// {@endtemplate}
class AppLoader extends StatelessWidget {
  /// {@macro app_loader}
  const AppLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: ColoredBox(
        color: Colors.white.withOpacity(
          0.9,
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}

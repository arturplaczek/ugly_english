import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

const _iconSize = 16.0;

/// App tile widget.
class AppTile extends StatelessWidget {
  const AppTile._({
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.onTap,
  });

  /// Creates an information tile with a defined icon.
  factory AppTile.info({
    required Widget title,
    required Widget subtitle,
    required VoidCallback onTap,
  }) {
    return AppTile._(
      title: title,
      subtitle: subtitle,
      onTap: onTap,
      leading: const Icon(
        Icons.info,
        size: _iconSize,
      ),
    );
  }

  /// Creates an success tile with a defined icon.
  factory AppTile.success({
    required Widget title,
    required Widget subtitle,
    required VoidCallback onTap,
  }) {
    return AppTile._(
      title: title,
      subtitle: subtitle,
      onTap: onTap,
      leading: const Icon(
        Icons.done,
        size: _iconSize,
      ),
    );
  }

  /// Creates a warning tile with a defined icon.
  factory AppTile.warning({
    required Widget title,
    required Widget subtitle,
    required VoidCallback onTap,
  }) {
    return AppTile._(
      title: title,
      subtitle: subtitle,
      onTap: onTap,
      leading: const Icon(
        Icons.error,
        size: _iconSize,
      ),
    );
  }

  /// Title widget.
  final Widget title;

  /// Subtitle widget.
  final Widget subtitle;

  /// Leading widget.
  final Widget leading;

  /// Tile tap callback.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: _AppTileCard(
        leading: leading,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _AppTileTitle(child: title),
            const SizedBox(height: AppSpacing.xs),
            _AppTileSubtitle(child: subtitle),
          ],
        ),
      ),
    );
  }
}

class _AppTileCard extends StatelessWidget {
  const _AppTileCard({
    required this.leading,
    required this.child,
  });

  final Widget leading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      color: AppColors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg).copyWith(
          right: AppSpacing.sm,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: leading,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
                child: child,
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class _AppTileTitle extends StatelessWidget {
  const _AppTileTitle({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DefaultTextStyle(
      style: textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.bold,
      ),
      child: child,
    );
  }
}

class _AppTileSubtitle extends StatelessWidget {
  const _AppTileSubtitle({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DefaultTextStyle(
      style: textTheme.bodySmall!.copyWith(
        color: AppColors.darkGray4,
        height: 1.8,
      ),
      child: child,
    );
  }
}

import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_card}
/// Card widget displayed in the application.
/// {@endtemplate}
class AppCard extends StatelessWidget {
  /// {@macro app_card}
  const AppCard({
    required this.child,
    super.key,
    VoidCallback? onPressed,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    List<BoxShadow>? shadow,
    BorderRadius? borderRadius,
  })  : _onPressed = onPressed,
        _margin = margin ?? const EdgeInsets.symmetric(horizontal: 16),
        _padding = padding ?? const EdgeInsets.all(16),
        _backgroundColor = backgroundColor ?? AppColors.white,
        _shadow = shadow ?? _defaultShadow,
        _borderRadius = borderRadius ??
            const BorderRadius.all(
              Radius.circular(8),
            );

  /// App card with a default child being application permission.
  AppCard.applicationPermission({
    required Widget title,
    Key? key,
    Widget? subtitle,
    Widget? image,
    EdgeInsets? margin,
    VoidCallback? onPressed,
  }) : this(
          key: key,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          margin: margin,
          onPressed: onPressed,
          child: _ApplicationPermissionChild(
            title: title,
            subtitle: subtitle,
            image: image,
          ),
        );

  /// App card with a permission status. Includes button to open app/website
  /// or to ask permission again if permission status is denied.
  AppCard.applicationPermissionStatus({
    required Widget title,
    required AppPermissionStatus status,
    required String buttonText,
    Key? key,
    Widget? image,
    EdgeInsets? margin,
    VoidCallback? onButtonPressed,
    VoidCallback? onPressed,
  }) : this(
          key: key,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          margin: margin,
          onPressed: onPressed,
          child: _ApplicationPermissionStatusCard(
            title: title,
            status: status,
            image: image,
            buttonText: buttonText,
            onButtonPressed: onButtonPressed,
          ),
        );

  final VoidCallback? _onPressed;

  /// The margin of the card. Defaults to 16 horizontal.
  final EdgeInsets _margin;

  /// The padding of the card. Defaults to 16 all.
  final EdgeInsets _padding;

  /// The background color of the card. Defaults to white.
  final Color _backgroundColor;

  /// Shadow of the card.
  final List<BoxShadow> _shadow;

  final BorderRadius _borderRadius;

  static const List<BoxShadow> _defaultShadow = [
    BoxShadow(
      color: AppColors.black8Opacity,
      offset: Offset(0, 1),
      blurRadius: 20,
    ),
    BoxShadow(
      color: AppColors.black6Opacity,
      offset: Offset(0, 8),
      blurRadius: 16,
    ),
  ];

  /// The widget below this widget in the tree.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _margin,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: _shadow,
        ),
        child: Material(
          borderRadius: _borderRadius,
          color: _backgroundColor,
          child: InkWell(
            borderRadius: _borderRadius,
            onTap: _onPressed,
            child: Padding(
              padding: _padding,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class _ApplicationPermissionChild extends StatelessWidget {
  const _ApplicationPermissionChild({
    required this.title,
    this.subtitle,
    this.image,
  });

  final Widget title;
  final Widget? subtitle;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (image != null) ...[
          image!,
          const SizedBox(width: 16),
        ],
        _AppPermissionCardTitleSubtitle(
          title: title,
          subtitle: subtitle,
        ),
      ],
    );
  }
}

class _AppPermissionCardTitleSubtitle extends StatelessWidget {
  const _AppPermissionCardTitleSubtitle({
    required this.title,
    this.subtitle,
  });

  final Widget title;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextStyle(
          style: AppTextStyle.titleLarge,
          child: title,
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 8),
          DefaultTextStyle(
            style: AppTextStyle.bodyLarge,
            child: subtitle!,
          ),
        ],
      ],
    );
  }
}

class _ApplicationPermissionStatusCard extends StatelessWidget {
  const _ApplicationPermissionStatusCard({
    required this.title,
    required this.status,
    required this.buttonText,
    this.onButtonPressed,
    this.image,
  });

  final Widget title;
  final AppPermissionStatus status;
  final Widget? image;
  final VoidCallback? onButtonPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              if (image != null) ...[
                image!,
                const SizedBox(width: 24),
              ],
              _AppPermissionCardTitleSubtitle(
                title: title,
                subtitle: Text(status.name),
              ),
            ],
          ),
          if (status == AppPermissionStatus.allowed) ...[
            Align(
              alignment: Alignment.bottomRight,
              child: AppSmallButton.primary(
                onPressed: onButtonPressed,
                child: Text(buttonText),
              ),
            ),
          ],
          if (status == AppPermissionStatus.denied) ...[
            Align(
              alignment: Alignment.bottomRight,
              child: AppTextButton(
                onPressed: onButtonPressed,
                child: Text(
                  buttonText,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// This enum is for permission status of a request.
enum AppPermissionStatus {
  /// This is for permission denied.
  denied,

  /// This is for permission allowed.
  allowed,

  /// This is for permission pending.
  pending
}

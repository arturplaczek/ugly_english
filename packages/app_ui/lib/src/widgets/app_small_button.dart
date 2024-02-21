import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_small_button}
/// Button with text displayed in the application.
/// {@endtemplate}
class AppSmallButton extends StatelessWidget {
  /// {@macro app_small_button}
  const AppSmallButton._({
    required this.child,
    super.key,
    this.onPressed,
    Color? buttonColor,
    Color? disabledButtonColor,
    Color? foregroundColor,
    BorderSide? borderSide,
    TextStyle? textStyle,
    double? elevation,
  })  : _disabledButtonColor = disabledButtonColor ?? AppColors.darkGray4,
        _buttonColor = buttonColor ?? Colors.white,
        _borderSide = borderSide,
        _textStyle = textStyle ?? AppTextStyle.labelLarge,
        _foregroundColor = foregroundColor ?? AppColors.black,
        _elevation = elevation ?? 0;

  /// Filled primary button.
  const AppSmallButton.primary({
    required Widget child,
    Key? key,
    VoidCallback? onPressed,
    double? elevation,
    TextStyle? textStyle,
  }) : this._(
          key: key,
          child: child,
          onPressed: onPressed,
          buttonColor: AppColors.primary,
          foregroundColor: AppColors.white,
          elevation: elevation,
          textStyle: textStyle,
        );

  /// [VoidCallback] called when button is pressed.
  /// Button is disabled when null.
  final VoidCallback? onPressed;

  /// A background color of the button.
  final Color _buttonColor;

  final Color _disabledButtonColor;

  /// Color of the text, icons etc.
  final Color _foregroundColor;

  /// [TextStyle] of the button text.
  final TextStyle _textStyle;

  /// A border of the button.
  final BorderSide? _borderSide;

  /// Elevation of the button.
  final double _elevation;

  /// [Widget] displayed on the button.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onPressed != null ? 1 : 0.6,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          maximumSize: MaterialStateProperty.all(
            const Size(160, 36),
          ),
          minimumSize: MaterialStateProperty.all(
            const Size(160, 36),
          ),
          textStyle: MaterialStateProperty.all(_textStyle),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return _disabledButtonColor;
              }
              return _buttonColor;
            },
          ),
          elevation: MaterialStateProperty.all(_elevation),
          foregroundColor: MaterialStateProperty.all(_foregroundColor),
          side: MaterialStateProperty.all(_borderSide),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}

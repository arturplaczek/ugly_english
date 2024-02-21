import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/generated/fonts.gen.dart';
import 'package:flutter/widgets.dart';

/// App Text Style Definitions based on the material design typography.
class AppTextStyle {
  /// Text style with font size 28 and bold weight.
  static const TextStyle displayLarge = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 28,
    fontWeight: AppFontWeight.bold,
  );

  /// Text style with font size 24 and regular weight.
  static const TextStyle displayMedium = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 24,
    fontWeight: AppFontWeight.regular,
  );

  /// Text style with font size 20 and regular weight.
  static const TextStyle displaySmall = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 20,
    fontWeight: AppFontWeight.regular,
  );

  /// Text style with font size 32 and regular weight.
  static const TextStyle headlineLarge = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 32,
    fontWeight: AppFontWeight.regular,
  );

  /// Text style with font size 18 and medium weight.
  static const TextStyle headlineMedium = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 18,
    fontWeight: AppFontWeight.medium,
  );

  /// Text style with font size 16 and medium weight.
  static const TextStyle headlineSmall = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 24,
    fontWeight: AppFontWeight.medium,
  );

  /// Text style with font size 22 and regular weight.
  static const TextStyle titleLarge = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 22,
    fontWeight: AppFontWeight.regular,
  );

  /// Text style with font size 16 and medium weight.
  static const TextStyle titleMedium = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 16,
    fontWeight: AppFontWeight.medium,
  );

  /// Text style with font size 14 and medium weight.
  static const TextStyle titleSmall = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 14,
    fontWeight: AppFontWeight.medium,
  );

  /// Text style with font size 16 and regular weight.
  static const TextStyle bodyLarge = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 16,
    fontWeight: AppFontWeight.regular,
  );

  /// Text style with font size 14 and regular weight.
  static const TextStyle bodyMedium = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 14,
    fontWeight: AppFontWeight.regular,
  );

  /// Text style with font size 12 and regular weight.
  static const TextStyle bodySmall = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 12,
    fontWeight: AppFontWeight.regular,
  );

  /// Text style with font size 14 and medium weight.
  static const TextStyle labelLarge = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 14,
    fontWeight: AppFontWeight.medium,
  );

  /// Text style with font size 12 and medium weight.
  static const TextStyle labelMedium = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 12,
    fontWeight: AppFontWeight.medium,
  );

  /// Text style with font size 10 and medium weight.
  static const TextStyle labelSmall = TextStyle(
    package: 'app_ui',
    fontFamily: FontFamily.roboto,
    color: AppColors.black,
    fontSize: 10,
    fontWeight: AppFontWeight.medium,
  );
}

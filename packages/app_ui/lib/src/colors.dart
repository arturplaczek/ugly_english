// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

/// Defines the color palette for the App UI.
abstract class AppColors {
  /// Black
  static const Color black = Color(0xFF000000);

  /// Black with 80% opacity
  static const Color black8Opacity = Color(0x14000000);

  /// Black with 60% opacity
  static const Color black6Opacity = Color(0x0F000000);

  /// Light Grey F9F9F9.
  static const Color lightGrey1 = Color(0xFFF9F9F9);

  /// Light Grey F5F5F5. Used for card backgrounds.
  static const Color lightGrey2 = Color(0xFFF5F5F5);

  /// Light Gray EBEBEB.
  static const Color lightGrey3 = Color(0xFFEBEBEB);

  /// Grey D8D8D8. Used for dividers.
  static const Color grey = Color(0xFFD8D8D8);

  /// DarkGray1 B4B4B4.
  static const Color darkGray1 = Color(0xFFB4B4B4);

  /// DarkGray2 999999. Used for disabled buttons.
  static const Color darkGray2 = Color(0xFF999999);

  /// DarkGray3 8B8B8B.
  static const Color darkGray3 = Color(0xFF8B8B8B);

  /// darkGray4 7C7C7C. Used for secondary text.
  static const Color darkGray4 = Color(0xFF7C7C7C);

  /// DarkGray5 616161.
  static const Color darkGray5 = Color(0xFF616161);

  /// White
  static const Color white = Color(0xFFFFFFFF);

  /// Transparent
  static const Color transparent = Color(0x00000000);

  /// Green
  static const Color green = Color(0xFF64C54C);

  /// Orange
  static const Color primary = Color(0xFF5c6e4f);

  /// Orange
  static const Color lightOrange = Color(0xFFFFBC80);

  /// Red
  static const Color red = Color(0xFFCD3C14);

  /// Light Red
  static const Color lightRed = Color(0xFFFAEBE7);

  /// Grey background color for the unblock request section.
  static const Color unblockRequestBackground = Color(0xFFF3F3F4);

  /// Grey background color for the blocked apps section.
  static const Color blockedAppsBackground = Color(0xFFFAFAFB);

  /// Grey background color for the dashboard section.
  static const Color dashboardEllipsis = Color(0XFFE8E9EC);

  /// Pink color, used as primary in T-mobile app.
  static const Color pink = Color(0xFFe20074);

  static MaterialColor createMaterialColor(Color color) {
    return MaterialColor(color.value, _createSwatch(color));
  }

  static ColorScheme createColorScheme(Color primaryColor) {
    final primarySwatch = _createSwatch(primaryColor);
    final materialPrimaryColor = MaterialColor(
      primaryColor.value,
      primarySwatch,
    );

    return ColorScheme.fromSwatch(
      primarySwatch: materialPrimaryColor,
      backgroundColor: Colors.white,
      errorColor: AppColors.red,
    ).copyWith(
      tertiary: AppColors.grey,
    );
  }

  static Map<int, Color> _createSwatch(Color color) {
    final colorSwatch = <int, Color>{};

    for (var i = 1; i <= 10; i++) {
      int strength;
      if (i < 3) {
        strength = 50 * i;
      } else {
        strength = 100 * (i - 1);
      }

      colorSwatch[strength] = Color.fromRGBO(
        color.red - color.red * i ~/ 10,
        color.green - color.green * i ~/ 10,
        color.blue - color.blue * i ~/ 10,
        1,
      );
    }
    return colorSwatch;
  }
}

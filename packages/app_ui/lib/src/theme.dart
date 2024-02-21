import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// Namespace for the App [ThemeData].
class AppTheme {
  /// Standard `ThemeData` for App UI.
  static ThemeData standard(
    ColorScheme colorScheme,
    MaterialColor primarySwatch,
  ) {
    return ThemeData(
      colorScheme: colorScheme,
      primaryColor: colorScheme.primary,
      primarySwatch: primarySwatch,
      appBarTheme: _appBarTheme(colorScheme),
      cardTheme: _cardTheme(colorScheme),
      filledButtonTheme: _filledButtonTheme(colorScheme),
      elevatedButtonTheme: _elevatedButtonTheme(colorScheme),
      outlinedButtonTheme: _outlinedButtonTheme(colorScheme),
      scaffoldBackgroundColor: _scaffoldBackgroundColor(colorScheme),
      bottomNavigationBarTheme: _bottomNavigationBarTheme(colorScheme),
      textTheme: _textTheme(),
      dialogBackgroundColor: AppColors.white,
      dialogTheme: _dialogTheme(colorScheme),
      tooltipTheme: _tooltipTheme(colorScheme),
      bottomSheetTheme: _bottomSheetTheme(colorScheme),
      tabBarTheme: _tabBarTheme(colorScheme),
      dividerTheme: _dividerTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      textButtonTheme: _textButtonThemeData(colorScheme),
      switchTheme: _switchThemeData(colorScheme),
      checkboxTheme: _checkboxThemeData(colorScheme),
      inputDecorationTheme: _inputDecorationTheme(colorScheme),
      listTileTheme: _listTileTheme(colorScheme),
      progressIndicatorTheme: _progressIndicatorTheme(colorScheme),
    );
  }

  static TextTheme _textTheme() {
    return const TextTheme(
      displayLarge: AppTextStyle.displayLarge,
      displayMedium: AppTextStyle.displayMedium,
      displaySmall: AppTextStyle.displaySmall,
      headlineMedium: AppTextStyle.headlineMedium,
      headlineSmall: AppTextStyle.headlineSmall,
      titleLarge: AppTextStyle.titleLarge,
      titleMedium: AppTextStyle.titleMedium,
      titleSmall: AppTextStyle.titleSmall,
      bodyLarge: AppTextStyle.bodyLarge,
      bodyMedium: AppTextStyle.bodyMedium,
      bodySmall: AppTextStyle.bodySmall,
      labelSmall: AppTextStyle.labelSmall,
      labelMedium: AppTextStyle.labelMedium,
      labelLarge: AppTextStyle.labelLarge,
    );
  }

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) {
    return const AppBarTheme(
      color: AppColors.white,
      elevation: 0,
      foregroundColor: AppColors.black,
      centerTitle: false,
      titleTextStyle: AppTextStyle.headlineMedium,
    );
  }

  static CardTheme _cardTheme(ColorScheme colorScheme) {
    return CardTheme(
      color: AppColors.lightGrey2,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  static IconThemeData _iconTheme(ColorScheme colorScheme) {
    return const IconThemeData(
      color: AppColors.black,
      size: 24,
    );
  }

  static FilledButtonThemeData _filledButtonTheme(ColorScheme colorScheme) {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme(ColorScheme colorScheme) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        fixedSize: const Size(208, 54),
      ),
    );
  }

  static TooltipThemeData _tooltipTheme(ColorScheme colorScheme) {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: AppColors.white),
    );
  }

  static DialogTheme _dialogTheme(ColorScheme colorScheme) {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData _bottomSheetTheme(ColorScheme colorScheme) {
    return const BottomSheetThemeData(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme _tabBarTheme(ColorScheme colorScheme) {
    return TabBarTheme(
      labelColor: colorScheme.primary,
      indicatorColor: colorScheme.primary,
      labelStyle: AppTextStyle.labelLarge,
      unselectedLabelStyle: AppTextStyle.labelLarge,
      unselectedLabelColor: colorScheme.tertiary,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData _dividerTheme(ColorScheme colorScheme) {
    return const DividerThemeData(
      space: 0,
      thickness: 1,
      color: AppColors.lightGrey3,
    );
  }

  static TextButtonThemeData _textButtonThemeData(ColorScheme colorScheme) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: AppTextStyle.headlineSmall,
      ),
    );
  }

  static SwitchThemeData _switchThemeData(ColorScheme colorScheme) {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith((states) {
        if (!states.contains(MaterialState.selected)) {
          return Colors.white;
        }
        return Colors.white;
      }),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (!states.contains(MaterialState.selected)) {
          return colorScheme.tertiary;
        }
        return colorScheme.primary;
      }),
      trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent),
    );
  }

  static CheckboxThemeData _checkboxThemeData(ColorScheme colorScheme) {
    return CheckboxThemeData(
      side: BorderSide(
        color: colorScheme.tertiary,
        width: 2,
      ),
      fillColor: MaterialStateProperty.resolveWith((states) {
        if (!states.contains(MaterialState.selected)) {
          return AppColors.white;
        }
        return colorScheme.primary;
      }),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if (!states.contains(MaterialState.selected)) {
          return colorScheme.tertiary;
        }
        return AppColors.white;
      }),
    );
  }

  static InputDecorationTheme _inputDecorationTheme(ColorScheme colorScheme) {
    return InputDecorationTheme(
      focusColor: colorScheme.primary,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorScheme.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colorScheme.tertiary,
          width: 0,
        ),
      ),
      labelStyle: AppTextStyle.bodyMedium.copyWith(
        color: colorScheme.tertiary,
      ),
      floatingLabelStyle: AppTextStyle.bodySmall.copyWith(
        fontSize: 12,
      ),
      iconColor: colorScheme.primary,
      suffixIconColor: colorScheme.primary,
      suffixStyle: AppTextStyle.headlineSmall.copyWith(
        color: colorScheme.primary,
      ),
      constraints: const BoxConstraints(maxHeight: 54),
    );
  }

  static ListTileThemeData _listTileTheme(ColorScheme colorScheme) {
    return const ListTileThemeData();
  }

  static ProgressIndicatorThemeData _progressIndicatorTheme(
    ColorScheme colorScheme,
  ) {
    return ProgressIndicatorThemeData(
      color: colorScheme.primary,
      circularTrackColor: colorScheme.primary.withOpacity(0.3),
      linearTrackColor: colorScheme.primary.withOpacity(0.3),
    );
  }

  static Color _scaffoldBackgroundColor(ColorScheme colorScheme) {
    return AppColors.white;
  }

  static BottomNavigationBarThemeData _bottomNavigationBarTheme(
    ColorScheme colorScheme,
  ) {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: AppColors.black.withOpacity(0.5),
      showUnselectedLabels: true,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}

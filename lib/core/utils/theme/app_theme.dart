import 'package:flutter/material.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/app_colors.dart';
import 'package:portfolio_ayhem_hamdi/core/utils/theme/colors/light_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ThemeColorScheme.lightColorScheme,
    inputDecorationTheme: AppTheme.buildInputDecorationTheme(
      cs: ThemeColorScheme.lightColorScheme,
    ),
  );

  static InputDecorationTheme buildInputDecorationTheme({
    required ColorScheme cs,
  }) {
    return InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 13.6,
        color: cs.onSurface.withOpacity(0.6),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 13),
      border: UnderlineInputBorder(borderSide: BorderSide(color: cs.secondary)),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: cs.primary, width: 2),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: cs.secondary),
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: cs.secondary),
      ),
      filled: true,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
    );
  }
}

class ThemeColorScheme {
  static ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppLightColors.primaryColor,
    onPrimary: AppLightColors.onPrimaryColor,
    secondary: AppLightColors.secondaryColor,
    onSecondary: AppLightColors.onSecondaryColor,
    tertiary: AppLightColors.thirdColor,
    error: Colors.red,
    onError: Colors.black,
    surface: AppLightColors.surfaceColor,
    onSurface: AppLightColors.onSurfaceColor,
    primaryContainer: AppColors.kPrimaryContainer,
    onPrimaryContainer: AppColors.kOnPrimaryContainer,
  );
}

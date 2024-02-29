import 'package:app_geolocation/src/ui/colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static final ColorScheme _colorSchemeLight = ColorScheme.light(
    primary: AppColors.primary,
  );

  static ThemeData get light => ThemeData.from(
    colorScheme: _colorSchemeLight,
    useMaterial3: true,
  );
}
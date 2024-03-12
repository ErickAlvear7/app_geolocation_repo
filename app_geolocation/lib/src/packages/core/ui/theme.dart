import 'package:app_geolocation/src/packages/core/ui/ui.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static final ColorScheme _colorSchemeLight = ColorScheme.light(
    primary: AppColors.primary,
  );

  //tema para el botton

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      backgroundColor: _colorSchemeLight.primary,
      foregroundColor: Colors.white,
      minimumSize: const Size.fromHeight(AppDimens.dimen_36),
     
    ),
  );

  static ThemeData get light => ThemeData.from(
    colorScheme: _colorSchemeLight,
    useMaterial3: true,
  ).copyWith(
    elevatedButtonTheme: elevatedButtonTheme,
  );
}
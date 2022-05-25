import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  primaryColor: const Color(0xFF0277BD),
  primaryColorDark: const Color(0xFFE76901),
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  cardColor: const Color(0xFF737375),
  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFFF48121),
    disabledColor: Color(0xFFE5E5E5),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: const Color(0xFF0277BD),
    selectionColor: const Color(0xFF0277BD).withOpacity(0.5),
    selectionHandleColor: const Color(0xFF0277BD),
  ),
  colorScheme: const ColorScheme(
    primary: Color(0xFF0277BD),
    primaryVariant: Color(0xFFE76901),
    secondary: Color(0xFFF48121),
    secondaryVariant: Color(0xFFE76901),
    surface: Colors.red,
    background: Colors.white,
    error: Colors.red,
    onPrimary: Color(0xFF0277BD),
    onSecondary: Color(0xFF0277BD),
    onSurface: Color(0xFF0277BD),
    onBackground: Colors.white,
    onError: Colors.red,
    brightness: Brightness.light,
  ),
);

import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = FlexThemeData.light(
  scheme: FlexScheme.tealM3,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    useM2StyleDividerInM3: true,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  textTheme: _textTheme,
);

ThemeData darkAppTheme = FlexThemeData.dark(
  scheme: FlexScheme.tealM3,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    useM2StyleDividerInM3: true,
  ),
  keyColors: const FlexKeyColors(),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  textTheme: _textTheme,
);

TextTheme _textTheme = TextTheme(
  displayLarge:
      GoogleFonts.poppins(fontSize: 48.0, fontWeight: FontWeight.w700),
  displayMedium:
      GoogleFonts.poppins(fontSize: 34.0, fontWeight: FontWeight.w700),
  displaySmall:
      GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700),
  headlineLarge:
      GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700),
  headlineMedium:
      GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.w700),
  headlineSmall:
      GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w700),
  titleLarge: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.w500),
  titleMedium: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w500),
  titleSmall: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w500),
  bodyLarge: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w400),
  bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w400),
  bodySmall: GoogleFonts.poppins(fontSize: 12.0, fontWeight: FontWeight.w400),
);

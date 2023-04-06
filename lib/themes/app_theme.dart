import 'package:c317_mobile/themes/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: _textTheme,
);

ThemeData appThemeDark = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  textTheme: _textTheme,
);

TextTheme _textTheme = TextTheme(
  displayLarge: GoogleFonts.poppins(fontSize: 48.0, fontWeight: FontWeight.w700),
  displayMedium: GoogleFonts.poppins(fontSize: 34.0, fontWeight: FontWeight.w700),
  displaySmall: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700),
  headlineLarge: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700),
  headlineMedium: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.w700),
  headlineSmall: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w700),
  titleLarge: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.w500),
  titleMedium: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.w500),
  titleSmall: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w500),
  bodyLarge: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w400),
  bodyMedium: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w400),
  bodySmall: GoogleFonts.poppins(fontSize: 12.0, fontWeight: FontWeight.w400),
);



import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

final lightTokens = MoonTokens.light.copyWith(
  colors: MoonColors.light.copyWith(
    piccolo: Colors.blue,
    textPrimary: Colors.amber,
  ),
  typography: MoonTypography.typography.copyWith(
    heading: MoonTypography.typography.heading.apply(
      // Using variable font and bumping down the font weight compared to the
      // baseline 600 for heading.
      fontFamily: "DMSans",
      fontWeightDelta: -1,
      fontVariations: [const FontVariation('wght', 500)],
    ),
  ),
);

final lightTheme = ThemeData.light().copyWith(
    extensions: <ThemeExtension<dynamic>>[MoonTheme(tokens: lightTokens)],
  );
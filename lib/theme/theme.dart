import 'dart:ui';

import 'package:flutter/animation.dart' as FlutterAnimation;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:hexel/theme/internals/animation.dart';
import 'package:hexel/theme/internals/colors.dart';
import 'package:hexel/theme/internals/other.dart';
import 'package:hexel/theme/internals/typography.dart';

class Theme {
  final Animation animation;
  final Colors colors;
  final Typography typography;
  final Sizes sizes;
  final Shadows shadows;
  final Brightness brightness;

  const Theme({
    @required this.brightness,
    @required this.animation,
    @required this.colors,
    @required this.typography,
    @required this.sizes,
    @required this.shadows,
  });
}

const Theme defaultLightTheme = const Theme(
  brightness: Brightness.light,
  animation: Animation(
    majorCurve: FlutterAnimation.Curves.easeInOut,
    majorDuration: Duration(milliseconds: 850),
    minorCurve: FlutterAnimation.Curves.easeInOut,
    minorDuration: Duration(milliseconds: 300),
  ),
  colors: Colors(
    canvas: Color(0xFFEFEFFF),
    surface: Color(0xFFFFFFFF),
    control: Color(0xFFF5F5F5),
    controlDisabled: Color(0xFFDFDFDF),
    primary: Color(0xFF0496FF),
    secondary: Color(0xFF8F2D56),
    success: Color(0xFF7DC95E),
    warning: Color(0xFFFFBC42),
    error: Color(0xFFD81159),
  ),
  typography: Typography(
    colors: TextColors(
      primary: Color(0xFF111111),
      muted: Color(0xFF343434),
      disabled: Color(0xFF555555),
      onLight: Color(0xFF111111),
      onLightDisabled: Color(0xFF555555),
      onDark: Color(0xFFE0E0E0),
      onDarkDisabled: Color(0xFFBFBFBF),
    ),
    styles: TextStyles(
      body: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      caption: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      heading: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
      button: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ),
    ),
  ),
  sizes: Sizes(
    cardPadding: const EdgeInsets.all(12.0),
    denseControlPadding:
        const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
    controlPadding:
        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    largeGap: 8.0,
    mediumGap: 4.0,
    smallGap: 2.0,
    radius: const Radius.circular(12.0),
  ),
  shadows: Shadows(
    large: const BoxShadow(
      offset: Offset(0.0, 8.0),
      blurRadius: 12.0,
      color: const Color.fromRGBO(0, 0, 0, 0.18),
    ),
    small: const BoxShadow(
      offset: Offset(0.0, 2.0),
      blurRadius: 6.0,
      color: const Color.fromRGBO(0, 0, 0, 0.12),
    ),
  ),
);

const Theme defaultDarkTheme = const Theme(
  brightness: Brightness.dark,
  animation: Animation(
    majorCurve: FlutterAnimation.Curves.easeInOut,
    majorDuration: Duration(milliseconds: 850),
    minorCurve: FlutterAnimation.Curves.easeInOut,
    minorDuration: Duration(milliseconds: 300),
  ),
  colors: Colors(
    canvas: Color(0xFF1F1F1F),
    surface: Color(0xFF1D1D1D),
    control: Color(0xFF191919),
    controlDisabled: Color(0xFF202020),
    primary: Color(0xFF0496FF),
    secondary: Color(0xFF8F2D56),
    success: Color(0xFF7DC95E),
    warning: Color(0xFFFFBC42),
    error: Color(0xFFD81159),
  ),
  typography: Typography(
    colors: TextColors(
      primary: Color(0xFFE0E0E0),
      muted: Color(0xFFAAAAAA),
      disabled: Color(0xFFBFBFBF),
      onLight: Color(0xFF111111),
      onLightDisabled: Color(0xFF555555),
      onDark: Color(0xFFE0E0E0),
      onDarkDisabled: Color(0xFFBFBFBF),
    ),
    styles: TextStyles(
      body: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      caption: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
      ),
      heading: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
      button: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.5,
      ),
    ),
  ),
  sizes: Sizes(
    cardPadding: const EdgeInsets.all(12.0),
    denseControlPadding:
        const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
    controlPadding:
        const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    largeGap: 8.0,
    mediumGap: 4.0,
    smallGap: 2.0,
    radius: const Radius.circular(12.0),
  ),
  shadows: Shadows(
    large: const BoxShadow(
      offset: Offset(0.0, 8.0),
      blurRadius: 12.0,
      color: const Color.fromRGBO(0, 0, 0, 0.18),
    ),
    small: const BoxShadow(
      offset: Offset(0.0, 2.0),
      blurRadius: 6.0,
      color: const Color.fromRGBO(0, 0, 0, 0.12),
    ),
  ),
);

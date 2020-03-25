import 'package:flutter/widgets.dart';

class TextColors {
  final Color primary;
  final Color muted;
  final Color disabled;

  final Color onLight;
  final Color onLightDisabled;

  final Color onDark;
  final Color onDarkDisabled;

  const TextColors({
    @required this.primary,
    @required this.muted,
    @required this.disabled,
    @required this.onLight,
    @required this.onLightDisabled,
    @required this.onDark,
    @required this.onDarkDisabled,
  });
}

class TextStyles {
  final TextStyle body;
  final TextStyle heading;

  final TextStyle caption;

  final TextStyle button;

  const TextStyles({
    @required this.body,
    @required this.heading,
    @required this.caption,
    @required this.button,
  });
}

class Typography {
  final TextStyles styles;
  final TextColors colors;

  const Typography({
    @required this.styles,
    @required this.colors,
  });
}

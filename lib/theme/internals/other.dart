import 'package:flutter/widgets.dart';

class Sizes {
  final double smallGap;
  final double mediumGap;
  final double largeGap;
  final EdgeInsets denseControlPadding;
  final EdgeInsets controlPadding;
  final EdgeInsets cardPadding;
  final Radius radius;

  const Sizes({
    @required this.smallGap,
    @required this.mediumGap,
    @required this.largeGap,
    @required this.denseControlPadding,
    @required this.controlPadding,
    @required this.cardPadding,
    @required this.radius,
  });
}

class Shadows {
  final BoxShadow small;
  final BoxShadow large;

  const Shadows({
    @required this.small,
    @required this.large,
  });
}

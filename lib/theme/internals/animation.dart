import 'package:flutter/widgets.dart';

class Animation {
  final Duration majorDuration;
  final Curve majorCurve;

  final Duration minorDuration;
  final Curve minorCurve;

  const Animation({
    this.majorDuration,
    this.majorCurve,
    this.minorDuration,
    this.minorCurve,
  });
}

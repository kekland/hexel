import 'package:flutter/material.dart' as Material;
import 'package:flutter/widgets.dart';
import 'package:hexel/theme/theme.dart';

class ThemeProvider extends InheritedWidget {
  final Theme theme;

  ThemeProvider({
    Key key,
    @required this.theme,
    @required Widget child,
  }) : super(
            key: key,
            child: Material.Theme(
              data: Material.ThemeData(
                primaryColor: theme.colors.primary,
                accentColor: theme.colors.primary,
                disabledColor: theme.colors.controlDisabled,
                canvasColor: theme.colors.canvas,
                cardColor: theme.colors.surface,
                brightness: theme.brightness,
              ),
              child: Material.Material(
                type: Material.MaterialType.transparency,
                child: Material.AnimatedDefaultTextStyle(
                  duration: theme.animation.minorDuration,
                  curve: theme.animation.minorCurve,
                  style: theme.typography.styles.body.copyWith(
                    color: theme.typography.colors.primary,
                  ),
                  child: IconTheme(
                    data: IconThemeData(
                      color: theme.typography.colors.primary,
                    ),
                    child: child,
                  ),
                ),
              ),
            ));

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) => theme != oldWidget.theme;

  static Theme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()?.theme;
  }
}

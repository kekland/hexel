import 'package:flutter/widgets.dart';
import 'package:hexel/theme/theme_provider.dart';
import 'package:flutter/material.dart' as Material;

class Surface extends StatelessWidget {
  final double width;
  final double height;

  final Color color;
  final BoxShadow shadow;

  final BorderRadius borderRadius;

  final EdgeInsets padding;
  final Widget child;
  final AlignmentGeometry alignment;

  const Surface({
    Key key,
    @required this.child,
    this.width,
    this.height,
    this.color,
    this.shadow,
    this.borderRadius,
    this.padding,
    this.alignment,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    return AnimatedContainer(
      width: width,
      height: height,
      duration: theme.animation.minorDuration,
      curve: theme.animation.minorCurve,
      alignment: alignment,
      padding: padding ?? theme.sizes.cardPadding,
      decoration: BoxDecoration(
        color: color ?? theme.colors.surface,
        borderRadius: borderRadius ?? BorderRadius.all(theme.sizes.radius),
        boxShadow: shadow != null ? [shadow] : null,
      ),
      child: Material.Material(
        type: Material.MaterialType.transparency,
        borderRadius: borderRadius ?? BorderRadius.all(theme.sizes.radius),
        child: AnimatedDefaultTextStyle(
          duration: theme.animation.minorDuration,
          curve: theme.animation.minorCurve,
          style: theme.typography.styles.body.copyWith(
            color: theme.typography.colors.primary,
          ),
          child: child,
        ),
      ),
    );
  }
}

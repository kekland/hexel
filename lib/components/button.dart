import 'package:flutter/widgets.dart';
import 'package:hexel/components/surface.dart';
import 'package:hexel/theme/theme_provider.dart';
import 'package:flutter/material.dart' as Material;

class Button extends StatelessWidget {
  final Color color;
  final Color textColor;
  final VoidCallback onTap;

  final double width;
  final double height;
  final Widget label;

  final EdgeInsets padding;
  final BorderRadius borderRadius;

  final BoxShadow shadow;
  final TextStyle textStyle;

  final bool flat;

  const Button({
    Key key,
    this.color,
    @required this.onTap,
    @required this.label,
    this.height,
    this.textColor,
    this.padding,
    this.borderRadius,
    this.width,
    this.shadow,
    this.textStyle,
    this.flat = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    final _borderRadius = borderRadius ?? BorderRadius.all(theme.sizes.radius);
    var _color = color ?? theme.colors.primary;
    var _textColor = textColor ?? theme.typography.colors.onDark;
    var _shadow = shadow ?? theme.shadows.small;
    final _padding = padding ?? theme.sizes.controlPadding;

    final isDisabled = onTap == null;
    final _disabledColor = theme.colors.controlDisabled;
    final _textDisabledColor = theme.typography.colors.disabled;

    _color = isDisabled ? _disabledColor : _color;
    _textColor = isDisabled ? _textDisabledColor : _textColor;
    _shadow = isDisabled || flat ? null : _shadow;

    final _textStyle = theme.typography.styles.button
        .merge(textStyle)
        .copyWith(color: _textColor);

    return Surface(
      color: _color,
      width: width,
      height: height,
      padding: EdgeInsets.zero,
      borderRadius: _borderRadius,
      shadow: _shadow,
      child: Material.InkWell(
        borderRadius: _borderRadius,
        onTap: onTap,
        child: Align(
          heightFactor: 1.0,
          widthFactor: 1.0,
          alignment: Alignment.center,
          child: Padding(
            padding: _padding,
            child: AnimatedDefaultTextStyle(
              duration: theme.animation.minorDuration,
              curve: theme.animation.minorCurve,
              style: _textStyle,
              child: label,
            ),
          ),
        ),
      ),
    );
  }
}

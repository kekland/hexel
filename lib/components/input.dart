import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as Material;
import 'package:hexel/components/surface.dart';
import 'package:hexel/theme/theme_provider.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  final String hint;
  final String label;
  final Widget icon;
  final bool enabled;

  final EdgeInsets padding;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final Color textColor;
  final Color hintColor;

  const InputField({
    Key key,
    this.hint,
    @required this.label,
    this.icon,
    this.enabled = true,
    this.controller,
    this.focusNode,
    this.padding,
    this.borderRadius,
    this.backgroundColor,
    this.textColor,
    this.hintColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);

    var _padding = padding ?? theme.sizes.denseControlPadding;
    var _backgroundColor = backgroundColor ?? theme.colors.control;
    var _textColor = textColor ?? theme.typography.colors.primary;
    var _hintColor = hintColor ?? theme.typography.colors.muted;

    _backgroundColor =
        !enabled ? theme.colors.controlDisabled : _backgroundColor;

    _textColor = !enabled ? theme.typography.colors.disabled : _textColor;

    return Surface(
      padding: _padding,
      color: _backgroundColor,
      borderRadius: borderRadius,
      child: AbsorbPointer(
        absorbing: !enabled,
        child: Material.TextField(
          controller: controller,
          focusNode: focusNode,
          style: TextStyle(
            color: _textColor,
          ),
          readOnly: !enabled,
          enableInteractiveSelection: enabled,
          decoration: Material.InputDecoration(
            hintStyle: TextStyle(
              color: _hintColor,
            ),
            hintText: hint,
            labelText: label,
            icon: icon,
            border: Material.InputBorder.none,
          ),
        ),
      ),
    );
  }
}

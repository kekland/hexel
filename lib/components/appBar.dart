import 'package:flutter/widgets.dart';
import 'package:hexel/components/surface.dart';
import 'package:hexel/theme/theme.dart';
import 'package:hexel/theme/theme_provider.dart';

class AppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  AppBar({
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    final media = MediaQuery.of(context);
    return Surface(
      height: 64.0 + media.padding.top,
      width: double.infinity,
      borderRadius: BorderRadius.zero,
      padding: media.padding,
      shadow: theme.shadows.small,
      child: Container(
        height: 64.0,
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: theme.animation.minorDuration,
          curve: theme.animation.minorCurve,
          style: theme.typography.styles.heading.copyWith(
            color: theme.typography.colors.primary,
          ),
          child: title,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64.0);
}

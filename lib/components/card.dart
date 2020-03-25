import 'package:flutter/widgets.dart';
import 'package:hexel/components/surface.dart';
import 'package:hexel/theme/theme_provider.dart';

class Card extends StatelessWidget {
  final Widget child;

  const Card({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    return Surface(
      shadow: theme.shadows.small,
      child: child,
    );
  }
}

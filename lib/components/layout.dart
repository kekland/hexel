import 'package:flutter/material.dart' as Material;
import 'package:flutter/widgets.dart';
import 'package:hexel/components/surface.dart';
import 'package:hexel/theme/theme.dart';
import 'package:hexel/theme/theme_provider.dart';

class Layout extends StatelessWidget {
  final PreferredSizeWidget appBar;
  final PreferredSizeWidget bottomBar;
  final Widget body;

  const Layout({
    Key key,
    this.appBar,
    this.bottomBar,
    @required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeProvider.of(context);
    final media = MediaQuery.of(context);

    final bodyPadding = Material.EdgeInsets.only(
      top: (appBar?.preferredSize?.height ?? 0.0) + media.padding.top,
      bottom: (bottomBar?.preferredSize?.height ?? 0.0) + media.padding.bottom,
    );

    return Surface(
      width: media.size.width,
      height: media.size.height,
      color: theme.colors.canvas,
      padding: EdgeInsets.zero,
      borderRadius: BorderRadius.zero,
      child: Stack(
        children: [
          Padding(
            padding: bodyPadding,
            child: body,
          ),
          if (appBar != null) appBar,
          if (bottomBar != null) bottomBar,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart' as Material;
import 'package:flutter/widgets.dart';
import 'package:hexel/components/appBar.dart';
import 'package:hexel/components/button.dart';
import 'package:hexel/components/card.dart';
import 'package:hexel/components/input.dart';
import 'package:hexel/components/layout.dart';
import 'package:hexel/theme/theme.dart';
import 'package:hexel/theme/theme_provider.dart';

class StylePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                InputField(
                  label: 'Email',
                  hint: 'Enter your email',
                  icon: Icon(
                    Material.Icons.alternate_email,
                  ),
                  enabled: true,
                ),
                SizedBox(height: 16.0),
                Button(
                  onTap: () {},
                  label: Text('Click me!'),
                  flat: true,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

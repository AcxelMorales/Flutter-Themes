import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:themes/blocs/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: Lista(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            theme.setTheme(ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.amberAccent,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.amberAccent,
              ),
            ));
          },
        ),
      ),
    );
  }
}

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return Column(
      children: <FlatButton>[
        FlatButton(
          child: Text('Light'),
          onPressed: () {
            theme.setTheme(ThemeData.light());
          },
        ),
        FlatButton(
          child: Text('Dark'),
          onPressed: () {
            theme.setTheme(ThemeData.dark());
          },
        )
      ],
    );
  }
}

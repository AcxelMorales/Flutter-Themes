import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:themes/pages/home_page.dart';
import 'package:themes/blocs/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      title: 'Themes',
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      home: HomePage(),
    );
  }
}

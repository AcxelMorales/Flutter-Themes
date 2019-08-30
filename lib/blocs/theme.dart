import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  void setTheme(ThemeData theme) {
    this._themeData = theme;
    notifyListeners();
  }
}
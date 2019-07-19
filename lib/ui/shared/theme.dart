import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff5563ff);
  static Color darkAccent = Color(0xff5563ff);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color ratingBG = Colors.yellow[600];
  final ThemeData themeDark = ThemeData(

      backgroundColor: darkBG,
      brightness: Brightness.dark,
      primaryColor: Color(0xFFBB86FC),
      hintColor: Colors.white.withOpacity(0.7),
      accentColor: Color(0xFFBB86FC),
      scaffoldBackgroundColor: darkBG,
      cursorColor: darkAccent,

      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          title: TextStyle(
            color: lightBG,
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ));
  final ThemeData themeLight = ThemeData(
      backgroundColor: lightBG,
      brightness: Brightness.light,
      primaryColor: Colors.redAccent,
      accentColor: Colors.redAccent,
      cursorColor: lightAccent,
      scaffoldBackgroundColor: lightBG,
      hintColor: Colors.grey,
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          title: TextStyle(
            color: darkBG,
            fontSize: 22.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ));
  ThemeData _themeData;

  ThemeChanger() {
    this._themeData = themeLight;
  }

  toggleTheme() {
    if (this._themeData == themeLight)
      this._themeData = themeDark;
    else
      this._themeData = themeLight;
    notifyListeners();
  }
  toggleToDark(){
    this._themeData = themeDark;
    notifyListeners();
  }
  toggleToLight(){
    this._themeData = themeLight;
    notifyListeners();
  }

  getTheme() => _themeData;

  setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }
}

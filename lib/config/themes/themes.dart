import 'package:flutter/material.dart';
import 'package:catfacts/config/themes/text.dart';

class Themes {
  static final _light = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: textTheme,
  );
  static final _dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    textTheme: textTheme,
  );
  static Map<String, ThemeData> list = {
    "Light": _light,
    "dark": _dark,
  };
}

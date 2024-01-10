// import 'package:bpp_shop/Screens/Demo/theme_model.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class ThemeProvider with ChangeNotifier {
//   final String key = 'theme';
//   ThemeModel _themeModel = ThemeModel();
//
//   AppTheme get currentTheme => _themeModel.currentTheme;
//
//   ThemeProvider() {
//     loadTheme();
//   }
//
//   void loadTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     int savedTheme = prefs.getInt(key) ?? 2; // 2 is the default (System theme)
//     _themeModel.switchTheme(AppTheme.values[savedTheme]);
//   }
//
//   void changeTheme(AppTheme newTheme) async {
//     _themeModel.switchTheme(newTheme);
//     notifyListeners();
//
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setInt(key, newTheme.index); // Saving the selected theme
//   }
// }
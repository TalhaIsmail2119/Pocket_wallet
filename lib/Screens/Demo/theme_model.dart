// import 'package:flutter/material.dart';
//
// enum AppTheme {
//   Light,
//   Dark,
//   System,
// }
//
// // class ThemeModel {
// //   AppTheme currentTheme = AppTheme.System;
// //
// //   void switchTheme(AppTheme newTheme) {
// //     currentTheme = newTheme;
// //     notifyListeners(); // Notify listeners (Provider)
// //   }
// // }
//
// class ThemeModel with ChangeNotifier {
//   AppTheme _currentTheme = AppTheme.System;
//
//   AppTheme get currentTheme => _currentTheme;
//
//   void switchTheme(AppTheme newTheme) async {
//     _currentTheme = newTheme;
//     notifyListeners(); // Notify listeners (ChangeNotifier method)
//   }
// }

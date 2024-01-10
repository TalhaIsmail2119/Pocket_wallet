// import 'dart:js';
//
// import 'package:bpp_shop/Screens/Demo/theme-provider.dart';
// import 'package:bpp_shop/Screens/Demo/theme_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../../ThemeChange/theme_provider.dart';
//
//
// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           RadioListTile<AppTheme>(
//             title: const Text('Light Theme'),
//             value: AppTheme.Light,
//             groupValue: Provider.of<ThemeProvider>(context).currentTheme,
//             onChanged: (AppTheme? value) {
//               Provider.of<ThemeProvider>(context, listen: false).changeTheme(value!);
//             },
//           ),
//           RadioListTile<AppTheme>(
//             title: const Text('Dark Theme'),
//             value: AppTheme.Dark,
//             groupValue: Provider.of<ThemeProvider>(context).currentTheme,
//             onChanged: (AppTheme? value) {
//               Provider.of<ThemeProvider>(context, listen: false).changeTheme(value!);
//             },
//           ),
//           RadioListTile<AppTheme>(
//             title: const Text('System Theme'),
//             value: AppTheme.System,
//             groupValue: Provider.of<ThemeProvider>(context).currentTheme,
//             onChanged: (AppTheme? value) {
//               Provider.of<ThemeProvider>(context, listen: false).changeTheme(value!);
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

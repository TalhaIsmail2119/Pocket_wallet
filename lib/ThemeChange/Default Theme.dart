// import 'package:bpp_shop/ThemeChange/theme_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:provider/provider.dart';
//
// class DefaultTheme extends StatefulWidget {
//   const DefaultTheme({super.key});
//
//   @override
//   State<DefaultTheme> createState() => _DefaultThemeState();
// }
//
// class _DefaultThemeState extends State<DefaultTheme> {
//   @override
//   Widget build(BuildContext context) {
//     final  themeProvider = Provider.of<ThemeProvider>(context);
//     return Switch.adaptive(
//       value : themeProvider.isSystemMode,
//       onChanged: (v){
//         final provider = Provider.of<ThemeProvider>(context, listen: false);
//         provider.toggleSystem(v);
//         //provider.isSystemMode;
//       },
//     );
//   }
// }

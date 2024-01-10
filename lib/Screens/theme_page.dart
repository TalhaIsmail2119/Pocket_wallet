import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../ThemeChange/ChangeThemeButton.dart';
import '../ThemeChange/theme_provider.dart';

class ThemePage extends StatefulWidget {
  ThemePage({super.key});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  // bool firstValue = false;
  // bool secondValue = false;
  // bool thirdValue = false;
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    // @override
    // _saveData() async {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   await prefs.setBool("firstValue", firstValue);
    //   await prefs.setBool("secondValue", secondValue);
    //   await prefs.setBool("thirdValue", thirdValue);
    // }

    //final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        //backgroundColor: Colors.white,
        elevation: 0,
        //leading: Icon(Icons.arrow_back),
        title: Text('Theme Settings'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          //Text('Abcd'),
          //ChangeThemeButton() ,

          // Row(
          //     children: [
          //   Checkbox(
          //     // focusColor: Colors.red,
          //     //activeColor: Colors.blue,
          //     //activeColor: Theme.of(context).colorScheme.outline,
          //     shape: const RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(5.0))),
          //     value: firstValue,
          //     onChanged: (val) async {
          //       if (firstValue = val!) {
          //         val = await themeProvider.setThemeMode(ThemeMode.dark);
          //         firstValue = true;
          //         secondValue = false;
          //         thirdValue = false;
          //         themeProvider.saveBool(firstValue);
          //         //val = await themeProvider.saveData();
          //       }
          //       //themeProvider.saveData();
          //       //themeProvider.saveBool(firstValue);
          //       // setState(() {
          //       //   _saveData();
          //       // });
          //
          //       //firstValue = val!;
          //     },
          //   ),
          //   //themeProvider.saveBool(firstValue),
          //   //),
          //   Text('Dark Mode'),
          // ]),
          // Row(
          //   children: [
          //     Checkbox(
          //       //activeColor: Theme.of(context).colorScheme.outline,
          //       //activeColor: Colors.blue,
          //       shape: const RoundedRectangleBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
          //       value: secondValue,
          //       onChanged: (val) async {
          //         if (secondValue = val!) {
          //           //val = await themeProvider.saveSecond();
          //           val = await themeProvider.setThemeMode(ThemeMode.light);
          //           secondValue = true;
          //           firstValue = false;
          //           thirdValue = false;
          //           themeProvider.saveBool(secondValue);
          //           //val = await themeProvider.saveData();
          //           // themeProvider.saveData();
          //         }
          //         //themeProvider.saveBool(secondValue);
          //         //themeProvider.saveData();
          //         // setState(() {
          //         //   _saveData();
          //         // });
          //         //secondValue = val!;
          //       },
          //     ),
          //     //themeProvider.saveBool(secondValue),
          //     // ),
          //     Text('Light Mode'),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Checkbox(
          //       //fillColor: Theme.of(context).checkboxTheme.fillColor,
          //       //fillColor: Colors.transparent,
          //       //activeColor: Colors.blue,
          //       shape: const RoundedRectangleBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
          //       value: thirdValue,
          //       onChanged: (val) async {
          //         if (thirdValue = val!) {
          //           //val = await themeProvider.saveThird();
          //           val = await themeProvider.setThemeMode(ThemeMode.system);
          //           //thirdValue = true;
          //           firstValue = false;
          //           secondValue = false;
          //           themeProvider.saveBool(thirdValue);
          //           //val = await themeProvider.saveData();
          //         }
          //       },
          //     ),
          //
          //     Text('System Mode'),
          //   ],
          // ),

          //*******************************************
          // RadioListTile<themeProvider>(
          //   title: const Text('Light Theme'),
          //   value: themeProvider.setThemeMode(themeMode.light);
          //   groupValue: Provider.of<ThemeProvider>(context).currentTheme,
          //   onChanged: (AppTheme value) {
          //     Provider.of<ThemeProvider>(context, listen: false).changeTheme(value);
          //   },
          // ),
          // RadioListTile<AppTheme>(
          //   title: const Text('Dark Theme'),
          //   value: AppTheme.Dark,
          //   groupValue: Provider.of<ThemeProvider>(context).currentTheme,
          //   onChanged: (AppTheme value) {
          //     Provider.of<ThemeProvider>(context, listen: false).changeTheme(value);
          //   },
          // ),
          // RadioListTile<AppTheme>(
          //   title: const Text('System Theme'),
          //   value: AppTheme.System,
          //   groupValue: Provider.of<ThemeProvider>(context).currentTheme,
          //   onChanged: (AppTheme value) {
          //     Provider.of<ThemeProvider>(context, listen: false).changeTheme(value);
          //   },
          // ),
          Row(
            children: [
              Radio(
                value: themeProvider.themeMode,
                groupValue: ThemeMode.light,
                onChanged: (value){
                  log("Pressed Light Radio=================>${value}");
                  themeProvider.setThemeMode(ThemeMode.light);
                },
              ),
              const Text("Light"),
              Radio(
                value: themeProvider.themeMode, groupValue: ThemeMode.dark,
                onChanged: (value){
                  log("Pressed Dark Radio=================>${value}");
                  themeProvider.setThemeMode(ThemeMode.dark);
                },
              ),const Text("Dark"),
              Radio(
                value: themeProvider.themeMode, groupValue: ThemeMode.system,
                onChanged: (value){
                  log("Pressed System Radio=================>${value}");
                  themeProvider.setThemeMode(ThemeMode.system);
                },
              ),const Text("System"),

            ],
          ),

          //radio button for theme change
        ],
      ),
    );
  }
}

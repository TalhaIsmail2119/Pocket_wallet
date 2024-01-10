import 'package:pocket_wallet/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  //ThemeMode themeMode =   ThemeMode.system;

  ThemeMode? themeMode;

  //bool _check =true;
  // bool? ischecked = false;

  // bool firstValue = false;
  // bool secondValue = false;
  // bool thirdValue = false;
  //
  // SharedPreferences? _prefs;
  // final String key = "theme";
  // bool? _darkTheme;
  //
  // loadData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //   // prefs.getBool("firstValue");
  //   // prefs.getBool("secondValue");
  //   // prefs.getBool("thirdValue");
  //   if (prefs.getBool("firstValue") == true) {
  //     firstValue = true;
  //     secondValue = false;
  //     thirdValue = false;
  //   } else if (prefs.getBool("secondValue") == true) {
  //     firstValue = false;
  //     secondValue = true;
  //     thirdValue = false;
  //   } else {
  //     firstValue = false;
  //     secondValue = false;
  //     thirdValue = true;
  //   }
  //   notifyListeners();
  // }

  // saveBool(bool _bool) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //   if (_bool == true) {
  //     //secondValue = false;
  //     //thirdValue = false;
  //     await prefs.setBool("firstValue", firstValue);
  //     await prefs.setBool("secondValue", secondValue);
  //     await prefs.setBool("thirdValue", thirdValue);
  //   }
  //   // else if (_bool == true) {
  //   //   await prefs.setBool("secondValue", secondValue);
  //   // }
  //   // else {
  //   //   await prefs.setBool("thirdValue", thirdValue);
  //   // }
  //
  //   // await prefs.setBool("firstValue", firstValue);
  //   // await prefs.setBool("secondValue", secondValue);
  //   // await prefs.setBool("thirdValue", thirdValue);
  //   notifyListeners();
  // }

  // saveData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   if (firstValue == true) {
  //     await prefs.setBool("firstVal", firstValue);
  //   } else if (secondValue == true) {
  //     await prefs.setBool("secondValue", secondValue);
  //   } else {
  //     await prefs.setBool("thirdValue", thirdValue);
  //   }
  //
  //   notifyListeners();
  // }

  // saveFirst() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool("firstValue", firstValue);
  //   //await prefs.setBool("secondValue", secondValue);
  //   //await prefs.setBool("thirdValue", thirdValue);
  //   notifyListeners();
  // }
  // saveSecond() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //  // await prefs.setBool("firstValue", firstValue);
  //   await prefs.setBool("secondValue", secondValue);
  //   //await prefs.setBool("thirdValue", thirdValue);
  //   notifyListeners();
  // }
  // saveThird() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   //await prefs.setBool("firstValue", firstValue);
  //   //await prefs.setBool("secondValue", secondValue);
  //   await prefs.setBool("thirdValue", thirdValue);
  //   notifyListeners();
  // }

  // getInitialThemeMode() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   //SharedPreferences prefs = await SharedPreferences.getInstance();
  //   if (sharedPreferences.getString("themeMode") == "dark" && sharedPreferences.getBool("firstValue")==true) {
  //     themeMode = ThemeMode.dark;
  //     //sharedPreferences.getBool("firstValue");
  //     //firstValue=true;
  //   } else if (sharedPreferences.getString("themeMode") == "light" && sharedPreferences.getBool("secondValue")==true) {
  //     themeMode = ThemeMode.light;
  //     //sharedPreferences.getBool("secondValue");
  //    // secondValue=true;
  //   } else {
  //     themeMode = ThemeMode.system;
  //     //sharedPreferences.getBool("thirdValue");
  //     //thirdValue=true;
  //   }
  //   notifyListeners();
  // }
  getInitialThemeMode() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    if (sharedPreferences.getString("themeMode") == "dark") {
      themeMode = ThemeMode.dark;
      //sharedPreferences.getBool("firstValue");
      //firstValue=true;
    } else if (sharedPreferences.getString("themeMode") == "light") {
      themeMode = ThemeMode.light;
      //sharedPreferences.getBool("secondValue");
      // secondValue=true;
    } else {
      themeMode = ThemeMode.system;
      //sharedPreferences.getBool("thirdValue");
      //thirdValue=true;
    }
    notifyListeners();
  }

  bool get isDarkMode {
    if (themeMode == ThemeMode.dark) {
      return true;
    } else if (themeMode == ThemeMode.system) {
      var brightness =
          SchedulerBinding.instance.platformDispatcher.platformBrightness;
      if (brightness == Brightness.dark) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  // void toggleTheme(bool isOn) async {
  //   SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
  //   //_storedThemeInfo();
  //   if (isOn) {
  //     themeMode = ThemeMode.dark;
  //     sharedPreferences.setBool('is_Dark', true);
  //   } else {
  //     themeMode = ThemeMode.light;
  //     sharedPreferences.setBool('is_Dark', false);
  //   }
  //   notifyListeners();
  // }
  // void setThemeModeS(ThemeMode themeMode)async{
  //   final prefs= await SharedPreferences.getInstance();
  //
  //   prefs.setString("themeMode", themeMode.toShortString());
  // }

  setThemeMode(ThemeMode _themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    if (_themeMode == ThemeMode.dark) {
      themeMode = _themeMode;
      //firstValue=true;
      prefs.setString('themeMode', _themeMode.toString());
      //prefs.setBool("firstValue");
    } else if (_themeMode == ThemeMode.light) {
      themeMode = _themeMode;
      //secondValue = true;
      prefs.setString('themeMode', _themeMode.toString());
      //prefs.setBool("secondValue",);
    } else {
      themeMode = _themeMode;
      //thirdValue = true;
      prefs.setString('themeMode', _themeMode.toString());
      // prefs.setBool("thirdValue");
    }

    notifyListeners();
  }

  // initPrefs() async {
  //   if (_prefs == null) _prefs = await SharedPreferences.getInstance();
  // }
  //
  // loadFromPrefs() async {
  //   await initPrefs();
  //  // _darkTheme = _prefs!.getBool(key) ?? true;
  //   firstValue = _prefs!.getBool("firstValue") ?? true;
  //   secondValue = _prefs!.getBool("secondValue") ?? true;
  //   thirdValue = _prefs!.getBool("thirdValue") ?? true;
  //   notifyListeners();
  // }
  //
  // saveToPrefs() async {
  //   await initPrefs();
  //   //_prefs!.setBool(key, _darkTheme!);
  //   _prefs!.setBool("firstValue", firstValue);
  //   _prefs!.setBool("secondValue", secondValue);
  //   _prefs!.setBool("thirdValue", thirdValue);
  // }
}

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    unselectedWidgetColor: Colors.orange.shade800,
    toggleableActiveColor: Colors.blue,
    scaffoldBackgroundColor: Color(0xfff3f3f3),
    // primaryColor: Colors.green,s
    // checkboxTheme: CheckboxThemeData(
    //
    //   fillColor: MaterialStateProperty.resolveWith((states) {
    //     if (states.contains(MaterialState.selected)) {
    //       return Colors.blue;
    //     } else {
    //       return Colors.red;
    //     }
    //   }),
    //   checkColor: MaterialStateProperty.resolveWith((states) {
    //     if (states.contains(MaterialState.selected)) {
    //       return Colors.blue;
    //     } else {
    //       return Colors.black;
    //     }
    //   }),
    //
    //   // checkColor: MaterialStateProperty.all(Colors.blue),// fillColor: MaterialStateProperty.all(Colors.orange)
    // ),
    colorScheme: ColorScheme.light(
      background: Color(0xfff3f3f3),
      secondary: Color(0xffffffff),
      onBackground: Colors.white,
      primaryContainer: Colors.white,
      outline: Colors.red,
    ),

    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
    ),
    textTheme: const TextTheme(
        bodyText2: TextStyle(
            //color: Color(0xff334257)
            color: Colors.black)),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    unselectedWidgetColor: Colors.orange.shade800,
    toggleableActiveColor: Colors.blue,

    scaffoldBackgroundColor: Colors.black26,
    // checkboxTheme: CheckboxThemeData(
    //     fillColor: MaterialStateProperty.resolveWith((states) {
    //   if (states.contains(MaterialState.selected)) {
    //     return Colors.blue;
    //   } else {
    //     return Colors.transparent;
    //   }
    // }),
    //   checkColor: MaterialStateProperty.resolveWith((states) {
    //     if (states.contains(MaterialState.selected)) {
    //       return Colors.blue;
    //     } else {
    //       return Colors.red;
    //     }
    //   }),
    //
    //     //checkColor: MaterialStateProperty.all(Colors.red),
    //     //fillColor: MaterialStateProperty.all(Colors.white),
    //     ),

    colorScheme: ColorScheme.dark(
      //background: Colors.blue,
      secondary: Colors.blueGrey,
      onBackground: Colors.black,
      primaryContainer: Colors.black12,
      outline: Colors.red,
    ),

    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
        bodyText2: TextStyle(
      color: Colors.white,
    )),
  );
}

//
// SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values).then((_) {
// SharedPreferences.getInstance().then((prefs) {
// var darkModeOn = prefs.getBool('isDarkTheme') ?? getSystemTheme(); //if have value in database then that theme else the system theme will be used
// runApp(
// ChangeNotifierProvider<ThemeNotifier>(
// create: (_) => ThemeNotifier(darkModeOn ? MyThemes.darktheme : MyThemes.lightTheme),
// child: MyApp(),
// ),
// );
// }
// );
// });

// void toggleSystem(bool isOn) {
//   isSystemMode ==ThemeMode.dark ? isOn : isOn==false;
//
//   notifyListeners();
// }

// bool get isSystemMode => themeMode ==ThemeMode.system;
// _storedThemeInfo() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   await prefs.setBool('is_Dark', false);
// }

// SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values).then((_) {
// SharedPreferences.getInstance().then((prefs) {
// var darkModeOn = prefs.getBool('isDarkTheme') ?? getSystemTheme(); }
//isDark?  prefs.getBool('isDarkTheme') ??

// ThemeProvider(bool isDark){}

//  SharedPreferences prefs;
//  ThemeMode themeMode =  prefs.getBool('is_Dark') ? _setthemeMode() : ThemeMode.system;
// static get prefs => null;
// Future<Future<bool>> _setthemeMode() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   //  getSystemTheme();
//   if (isDark) {
//     Future<bool> themeModeLocale = prefs.setBool('is_Dark', true);
//     return themeModeLocale;
//   } else {
//     // themeMode == ThemeMode.light;
//     // prefs.setBool('is_Dark', false);
//     Future<bool> themeModeLocale = prefs.setBool('is_Dark', false);
//     return themeModeLocale;
//   }
// }

//bool _setthemeMode() async {
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   if () {
//     Future<bool> themeModeLocale = prefs.setBool('is_Dark', true);
//     return themeModeLocale;
//   } else {
//     // themeMode == ThemeMode.light;
//     // prefs.setBool('is_Dark', false);
//     Future<bool> themeModeLocale = prefs.setBool('is_Dark', false);
//     return themeModeLocale;
//   }
// }

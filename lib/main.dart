// // import 'package:bpp_shop/screens/sign_in_page.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// //
// // import 'On_Boarding/Home.dart';
// // import 'On_Boarding/OnBoard.dart';
//
// // int? isviewed;
// // void main() async {
// //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
// //     statusBarColor: Colors.transparent,
// //   ));
// //   WidgetsFlutterBinding.ensureInitialized();
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   isviewed = prefs.getInt('onBoard');
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatefulWidget {
// //   @override
// //   _MyAppState createState() => _MyAppState();
// // }
// //
// // class _MyAppState extends State<MyApp> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: isviewed != 0 ? OnBoard() : SignInPage(),
// //     );
// //   }
// // }
//
// //*******************************************************  Main  ***************************
//
import 'package:pocket_wallet/On_Boarding/on_boarding_page.dart';
import 'package:pocket_wallet/screens/sign_in_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'ThemeChange/ChangeThemeButton.dart';
import 'ThemeChange/theme_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:flutter_localization_master/localization/demo_localization.dart';
// import 'package:flutter_localization_master/router/custom_router.dart';
// import 'package:flutter_localization_master/router/route_constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

bool show = true;
//bool isDark =true;

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs =await SharedPreferences.getInstance();
  // isViewed =prefs.getInt('onBoardingPage');

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('onBoardingPage') ?? true;

  //*** Theme Local ***
  //SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
  //final isDark = prefs.getBool('is_Dark') ?? false;
  //isDark =prefs.getBool('is_Dark') ?? false;

  //WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  //await GetStorage.init();

  // runApp(MyApp(),
  // );
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale("en", ""),
      Locale("bn", ""),
    ],
    path: 'assets/translations',
  ));
}

class MyApp extends StatefulWidget {
  //final bool isDark;
  const MyApp({
    super.key,
    //required this.isDark,
  });

  // static void setLocale(BuildContext context, Locale newLocale) {
  //   _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
  //   state?.setLocale(newLocale);
  // }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // late Locale _locale;
  // setLocale(Locale locale) {
  //   setState(() {
  //     _locale = locale;
  //   });
  // }
  //
  // @override
  // void didChangeDependencies() {
  //   getLocale().then((locale) {
  //     setState(() {
  //       this._locale = locale;
  //     });
  //   });
  //   super.didChangeDependencies();
  // }

  // This widget is the root of your application.
  // @override
  // void initState(){
  //   loadData();
  //   super.initState();
  // }


  //
  //
  // _loadData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     firstValue = prefs.getBool("firstValue")!;
  //     secondValue = prefs.getBool("secondValue")!;
  //     thirdValue = prefs.getBool("thirdValue")!;
  //   });
  // }
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          themeProvider.getInitialThemeMode();
          //themeProvider.loadFromPrefs();
          //themeProvider.loadData();
          return MaterialApp(
            title: 'Pocket_Wallet',
            localizationsDelegates: context.localizationDelegates,
            // localizationsDelegates: [
            //   DemoLocalizations.delegate,
            //   //context.localizationDelegates,
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            // localeListResolutionCallback:(deviceLocale,supportedLocales){
            //   for(var locale in supportedLocales){
            //     if
            //   }
            // } ,

            supportedLocales: context.supportedLocales,
            locale: context.locale,
           // theme: Provider.of<ThemeProvider>(context).currentTheme,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeProvider.themeMode,
            // locale: _locale,
            // supportedLocales: [
            //   Locale("en", "US"),
            //   Locale("bn", "BN"),
            // ],
            // localizationsDelegates: [
            //   DemoLocalization.delegate,
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            // localeResolutionCallback: (locale, supportedLocales) {
            //   for (var supportedLocale in supportedLocales) {
            //     if (supportedLocale.languageCode == locale!.languageCode &&
            //         supportedLocale.countryCode == locale.countryCode) {
            //       return supportedLocale;
            //     }
            //   }
            //   return supportedLocales.first;
            // },
            // onGenerateRoute: CustomRouter.generatedRoute,
            // initialRoute: signInRoute,
            home: show ? OnBoardingPage() : SignInPage(),
          );
        });
  }
}
// //
//
// class MyApp extends HookConsumerWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context ,WidgetRef ref) {
//     //final appThemeState =ref.watch(appThemeStateNotifier);
//     final themeHelper =ref.watch(helperThemeStateNotifier);
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         //theme: appThemeState.isDarkModeEnabled? AppTheme.darkTheme :AppTheme.lightTheme,
//         theme: AppTheme.lightTheme,
//         darkTheme: AppTheme.darkTheme,
//         themeMode: themeHelper.themeMode(),
//         //themeMode:appThemeState.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light ,
//         //themeMode: ThemeMode.system,
//         home:OnBoardingPage());
//   }
// }

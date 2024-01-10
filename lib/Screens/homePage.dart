import 'package:pocket_wallet/ThemeChange/theme_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import '../ThemeChange/ChangeThemeButton.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // void _changeLanguage(Language language) async {
  //   Locale _locale = await setLocale(language.languageCode);
  //   MyApp.setLocale(context, _locale);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        // actions: [
        //   ChangeThemeButton() ,
        // ],
        //backgroundColor: Colors.red,
      ),

      drawer: Consumer( builder: (context,ThemeProvider,child) {
        return
          Drawer(
            backgroundColor: Theme
                .of(context)
                .colorScheme
                .surface,
            child: ListView(
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      //image: AssetImage()
                    ),
                    child: Center(child: Text("App Funtionalities"))),
                // SizedBox(
                //   height: 300,
                // ),

                // ListTile(
                //   leading:Text("Default Theme") ,
                //   //title:
                //   trailing: DefaultTheme() ,
                // ),
                ChangeThemeButton(),
                // ListTile(
                //   leading:Text("Change App Theme") ,
                //   //title:
                //   trailing: ChangeThemeButton() ,
                // ),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(

                      onPressed: () {
                        context.locale = new Locale("bn");
                      },
                      child: Text(
                          "Set Language :                                       Bangla")),
                ),
                SizedBox(
                  width: 3,
                ),
                TextButton(
                    onPressed: () {
                      context.locale = new Locale("en");
                    },
                    child: Text(
                        "                                                             English")),
                //*******
                // Container(
                //   child: Center(
                //       child: DropdownButton<Language>(
                //         iconSize: 30,
                //         hint: Text(getTranslated(context, 'change_language')),
                //         onChanged: (Language language) {
                //           _changeLanguage(language);
                //         },
                //         items: Language.languageList()
                //             .map<DropdownMenuItem<Language>>(
                //               (e) => DropdownMenuItem<Language>(
                //             value: e,
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceAround,
                //               children: <Widget>[
                //                 Text(
                //                   e.flag,
                //                   style: TextStyle(fontSize: 30),
                //                 ),
                //                 Text(e.name)
                //               ],
                //             ),
                //           ),
                //         )
                //             .toList(),
                //       )),
                // ),
              ],

            ),
          );
      }
      ),
      body: Center(
        child: Text(
         "~ Welcome To HomePage ~"
        ),
      ),
    );
  }
}

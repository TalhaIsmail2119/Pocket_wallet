import 'package:pocket_wallet/ThemeChange/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ChangeThemeButton extends StatefulWidget {


  @override
  State<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}bool firstValue = false;
bool secondValue = false;
bool thirdValue = false;

//final themeProvider = Provider.of<ThemeProvider>(context);

class _ChangeThemeButtonState extends State<ChangeThemeButton> {
  @override
  Widget build(BuildContext context) {
    bool? ischecked = false;

    return Consumer<ThemeProvider>(builder: (context,themeProvider,child) {
      return Column(
        children: [
          // Row(
          //     children: [
          //   // Theme(
          //   //   data: Theme.of(context).copyWith(
          //   //     unselectedWidgetColor: Colors.white,
          //   //   ),
          //   //  child:
          //   Checkbox(
          //     // checkColor: Theme.of(context).checkboxTheme.checkColor,
          //     activeColor: Theme.of(context).colorScheme.outline,
          //     //fillColor: Theme.of(context).checkboxTheme.fillColor,
          //
          //     shape: const RoundedRectangleBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(5.0))),
          //     // fillColor: MaterialStateProperty.resolveWith((Set states) {
          //     //   if (states.contains(MaterialState.disabled)) {
          //     //     return Colors.orange.withOpacity(.32);
          //     //   }
          //     //   return Colors.white;
          //     // }),
          //     // Rounded Checkbox
          //     //value: themeProvider.isDarkMode,
          //     value: firstValue,
          //     onChanged: (val) async {
          //       if (firstValue = val!) {
          //         val = await themeProvider.setThemeMode(ThemeMode.dark);
          //         firstValue = true;
          //         secondValue = false;
          //         thirdValue = false;
          //       }
          //       //firstValue = val!;
          //     },
          //   ),
          //   //),
          //   Text('Dark Mode'),
          // ]),
          // Row(
          //   children: [
          //     // Theme(
          //     //   data: Theme.of(context).copyWith(
          //     //     unselectedWidgetColor: Colors.white,
          //     //   ),
          //     //   child:
          //     Checkbox(
          //       activeColor: Theme.of(context).colorScheme.outline,
          //       //checkColor: Colors.blue,
          //       // fillColor: MaterialStateProperty.resolveWith((Set states) {
          //       //   if (states.contains(MaterialState.disabled)) {
          //       //     return Colors.orange.withOpacity(.32);
          //       //   }
          //       //   return Colors.white;
          //       // }),
          //       //fillColor: Theme.of(context).checkboxTheme.fillColor,
          //       shape: const RoundedRectangleBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
          //       // Rounded Checkbox
          //       //value: themeProvider.isDarkMode,
          //       value: secondValue,
          //       onChanged: (val) async {
          //         if (secondValue = val!) {
          //           val = await themeProvider.setThemeMode(ThemeMode.light);
          //           firstValue = false;
          //           thirdValue = false;
          //         }
          //
          //         // val = await themeProvider.setThemeMode(ThemeMode.light);
          //         // thirdValue = val!;
          //       },
          //     ),
          //     // ),
          //     Text('Light Mode'),
          //   ],
          // ),
          // Row(
          //   children: [
          //     // Theme(
          //     //   data: Theme.of(context).copyWith(
          //     //     unselectedWidgetColor: Colors.white,
          //     //   ),
          //     //child:
          //     Checkbox(
          //       fillColor: Theme.of(context).checkboxTheme.fillColor,
          //       // activeColor: Colors.blue,
          //       //checkColor: Colors.blue,
          //       // fillColor: MaterialStateProperty.resolveWith((Set states) {
          //       //   if (states.contains(MaterialState.disabled)) {
          //       //     return Colors.orange.withOpacity(.32);
          //       //   }
          //       //   return Colors.white;
          //       // }),
          //       shape: const RoundedRectangleBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
          //       // Rounded Checkbox
          //       //value: themeProvider.isDarkMode,
          //       value: thirdValue,
          //       onChanged: (val) async {
          //         if (thirdValue = val!) {
          //           val = await themeProvider.setThemeMode(ThemeMode.light);
          //           firstValue = false;
          //           secondValue = false;
          //         }
          //
          //         // val = await themeProvider.setThemeMode(ThemeMode.system);
          //         // secondValue = val!;
          //       },
          //     ),
          //     //),
          //     Text('System Mode'),
          //   ],
          // ),

          Text('Abcd'),

          Row(
              children: [
                Checkbox(
                 // focusColor: Colors.red,
                  activeColor: Colors.blue,
                  //activeColor: Theme.of(context).colorScheme.outline,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  value: firstValue,
                  onChanged: (val) async {
                    if (firstValue = val!) {
                      val = await themeProvider.setThemeMode(ThemeMode.dark);
                      firstValue = true;
                      secondValue = false;
                      thirdValue = false;
                    }
                    //firstValue = val!;
                  },
                ),
                //),
                Text('Dark Mode'),
              ]),
          Row(
            children: [
              Checkbox(
                //activeColor: Theme.of(context).colorScheme.outline,
                activeColor: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                value: secondValue,
                onChanged: (val) async {
                  if (secondValue = val!) {
                    val = await themeProvider.setThemeMode(ThemeMode.light);
                   // secondValue = true;
                    firstValue = false;
                    thirdValue = false;
                  }
                  //secondValue = val!;
                },
              ),
              // ),
              Text('Light Mode'),
            ],
          ),
          Row(
            children: [
              Checkbox(
                //fillColor: Theme.of(context).checkboxTheme.fillColor,
                //fillColor: Colors.transparent,
                activeColor: Colors.blue,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                value: thirdValue,
                onChanged: (val) async {
                  if (thirdValue = val!) {
                    val = await themeProvider.setThemeMode(ThemeMode.light);
                    //thirdValue = true;
                    firstValue = false;
                    secondValue = false;
                  }
                  //thirdValue = val!;
                },
              ),
              //),
              Text('System Mode'),
            ],
          ),

          Row(
            children: [
              Checkbox(
                  value: ischecked,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      ischecked = value;
                    });
                  }),
              Text(
                'Remember Me',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffb2b2b2)
                ),
              ),
            ],
          ),
          // CheckboxListTile(
          //   title: Text('Dark Theme'),
          //   value: themeProvider.setThemeMode(ThemeMode.dark),
          //   onChanged: (value) {
          //     if (value==firstValue) {
          //          themeProvider.setThemeMode(ThemeMode.dark);
          //          firstValue = true;
          //          secondValue = false;
          //          thirdValue = false;
          //     }
          //   },
          // ),

          // RadioListTile(
          //   activeColor: Colors.red,
          //   /*fillColor: Color(Colors.blue),*/
          //   value: firstValue, groupValue: AppTheme, onChanged:    (value) async {
          //   if (firstValue = value != null) {
          //     value = await themeProvider.setThemeMode(ThemeMode.dark);
          //     secondValue = false;
          //     thirdValue = false;
          //   }
          //   //firstValue = val!;
          // }, )
        ],
      );
    });

    //   Switch.adaptive(
    //   value : themeProvider.isDarkMode,
    //   onChanged: (v){
    //     //final provider = Provider.of<ThemeProvider>(context, listen: false);
    //     if(v){
    //       themeProvider.setThemeMode(ThemeMode.dark);
    //     }else{
    //       themeProvider.setThemeMode(ThemeMode.light);
    //     }
    //
    //     //provider.toggleTheme(v);
    //
    //   },
    // );
  }
}


//
// Column(
// children: [
// // Row(
// //     children: [
// //   // Theme(
// //   //   data: Theme.of(context).copyWith(
// //   //     unselectedWidgetColor: Colors.white,
// //   //   ),
// //   //  child:
// //   Checkbox(
// //     // checkColor: Theme.of(context).checkboxTheme.checkColor,
// //     activeColor: Theme.of(context).colorScheme.outline,
// //     //fillColor: Theme.of(context).checkboxTheme.fillColor,
// //
// //     shape: const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.all(Radius.circular(5.0))),
// //     // fillColor: MaterialStateProperty.resolveWith((Set states) {
// //     //   if (states.contains(MaterialState.disabled)) {
// //     //     return Colors.orange.withOpacity(.32);
// //     //   }
// //     //   return Colors.white;
// //     // }),
// //     // Rounded Checkbox
// //     //value: themeProvider.isDarkMode,
// //     value: firstValue,
// //     onChanged: (val) async {
// //       if (firstValue = val!) {
// //         val = await themeProvider.setThemeMode(ThemeMode.dark);
// //         firstValue = true;
// //         secondValue = false;
// //         thirdValue = false;
// //       }
// //       //firstValue = val!;
// //     },
// //   ),
// //   //),
// //   Text('Dark Mode'),
// // ]),
// // Row(
// //   children: [
// //     // Theme(
// //     //   data: Theme.of(context).copyWith(
// //     //     unselectedWidgetColor: Colors.white,
// //     //   ),
// //     //   child:
// //     Checkbox(
// //       activeColor: Theme.of(context).colorScheme.outline,
// //       //checkColor: Colors.blue,
// //       // fillColor: MaterialStateProperty.resolveWith((Set states) {
// //       //   if (states.contains(MaterialState.disabled)) {
// //       //     return Colors.orange.withOpacity(.32);
// //       //   }
// //       //   return Colors.white;
// //       // }),
// //       //fillColor: Theme.of(context).checkboxTheme.fillColor,
// //       shape: const RoundedRectangleBorder(
// //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
// //       // Rounded Checkbox
// //       //value: themeProvider.isDarkMode,
// //       value: secondValue,
// //       onChanged: (val) async {
// //         if (secondValue = val!) {
// //           val = await themeProvider.setThemeMode(ThemeMode.light);
// //           firstValue = false;
// //           thirdValue = false;
// //         }
// //
// //         // val = await themeProvider.setThemeMode(ThemeMode.light);
// //         // thirdValue = val!;
// //       },
// //     ),
// //     // ),
// //     Text('Light Mode'),
// //   ],
// // ),
// // Row(
// //   children: [
// //     // Theme(
// //     //   data: Theme.of(context).copyWith(
// //     //     unselectedWidgetColor: Colors.white,
// //     //   ),
// //     //child:
// //     Checkbox(
// //       fillColor: Theme.of(context).checkboxTheme.fillColor,
// //       // activeColor: Colors.blue,
// //       //checkColor: Colors.blue,
// //       // fillColor: MaterialStateProperty.resolveWith((Set states) {
// //       //   if (states.contains(MaterialState.disabled)) {
// //       //     return Colors.orange.withOpacity(.32);
// //       //   }
// //       //   return Colors.white;
// //       // }),
// //       shape: const RoundedRectangleBorder(
// //           borderRadius: BorderRadius.all(Radius.circular(5.0))),
// //       // Rounded Checkbox
// //       //value: themeProvider.isDarkMode,
// //       value: thirdValue,
// //       onChanged: (val) async {
// //         if (thirdValue = val!) {
// //           val = await themeProvider.setThemeMode(ThemeMode.light);
// //           firstValue = false;
// //           secondValue = false;
// //         }
// //
// //         // val = await themeProvider.setThemeMode(ThemeMode.system);
// //         // secondValue = val!;
// //       },
// //     ),
// //     //),
// //     Text('System Mode'),
// //   ],
// // ),
//
// Text('Abcd'),
//
// Row(
// children: [
// Checkbox(
// // focusColor: Colors.red,
// activeColor: Colors.blue,
// //activeColor: Theme.of(context).colorScheme.outline,
// shape: const RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(5.0))),
// value: firstValue,
// onChanged: (val) async {
// if (firstValue = val!) {
// val = await themeProvider.setThemeMode(ThemeMode.dark);
// firstValue = true;
// secondValue = false;
// thirdValue = false;
// }
// //firstValue = val!;
// },
// ),
// //),
// Text('Dark Mode'),
// ]),
// Row(
// children: [
// Checkbox(
// //activeColor: Theme.of(context).colorScheme.outline,
// activeColor: Colors.blue,
// shape: const RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(5.0))),
// value: secondValue,
// onChanged: (val) async {
// if (secondValue = val!) {
// val = await themeProvider.setThemeMode(ThemeMode.light);
// // secondValue = true;
// firstValue = false;
// thirdValue = false;
// }
// //secondValue = val!;
// },
// ),
// // ),
// Text('Light Mode'),
// ],
// ),
// Row(
// children: [
// Checkbox(
// //fillColor: Theme.of(context).checkboxTheme.fillColor,
// //fillColor: Colors.transparent,
// activeColor: Colors.blue,
// shape: const RoundedRectangleBorder(
// borderRadius: BorderRadius.all(Radius.circular(5.0))),
// value: thirdValue,
// onChanged: (val) async {
// if (thirdValue = val!) {
// val = await themeProvider.setThemeMode(ThemeMode.light);
// //thirdValue = true;
// firstValue = false;
// secondValue = false;
// }
// //thirdValue = val!;
// },
// ),
// //),
// Text('System Mode'),
// ],
// ),
//
// // Row(
// //   children: [
// //     Checkbox(
// //         value: ischecked,
// //         activeColor: Colors.blue,
// //         onChanged: (value) {
// //           setState(() {
// //             ischecked = value;
// //           });
// //         }),
// //     Text(
// //       'Remember Me',
// //       style: TextStyle(
// //         fontSize: 20,
// //         fontWeight: FontWeight.bold,
// //         //color: Color(0xffb2b2b2)
// //       ),
// //     ),
// //   ],
// // ),
// // CheckboxListTile(
// //   title: Text('Dark Theme'),
// //   value: themeProvider.setThemeMode(ThemeMode.dark),
// //   onChanged: (value) {
// //     if (value==firstValue) {
// //          themeProvider.setThemeMode(ThemeMode.dark);
// //          firstValue = true;
// //          secondValue = false;
// //          thirdValue = false;
// //     }
// //   },
// // ),
//
// // RadioListTile(
// //   activeColor: Colors.red,
// //   /*fillColor: Color(Colors.blue),*/
// //   value: firstValue, groupValue: AppTheme, onChanged:    (value) async {
// //   if (firstValue = value != null) {
// //     value = await themeProvider.setThemeMode(ThemeMode.dark);
// //     secondValue = false;
// //     thirdValue = false;
// //   }
// //   //firstValue = val!;
// // }, )
// ],
// ),

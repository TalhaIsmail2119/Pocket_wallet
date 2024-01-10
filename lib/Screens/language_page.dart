import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../ThemeChange/ChangeThemeButton.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        //backgroundColor: Colors.white,
        elevation: 0,
        //leading: Icon(Icons.arrow_back),
        title: Text('Language Settings'),
      ),
      body: Column(
        children: [
          //ChangeThemeButton() ,
          Align(
            //alignment: Alignment.topLeft,
            child: TextButton(

                onPressed: () {
                  context.locale = new Locale("bn");
                },
                child: Text("Bangla")),
          ),
          SizedBox(
            width: 3,
          ),
          TextButton(
              onPressed: () {
                context.locale = new Locale("en");
              },
              child: Text("English")),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'ChangeThemeButton.dart';

class HomeDemo extends StatelessWidget {
  const HomeDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          ChangeThemeButton(),
        ],
      ),
    );
  }
}

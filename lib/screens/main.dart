//import 'package:ahl_elmenofya/screens/mainscreens/homepage.dart';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_nav_bar/google_nav_bar.dart';

import 'login&regster&intro/intro_screen.dart';

void main() {
  runApp(const My_app());
}

// ignore: camel_case_types
class My_app extends StatelessWidget {
  const My_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
         // filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff70C047),
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff70C047),
            ),
            borderRadius: BorderRadius.circular(32),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff70C047),
            ),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
    );
  }
}

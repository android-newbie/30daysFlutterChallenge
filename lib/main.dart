// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// home: HomePage(),
     
      themeMode: ThemeMode.light,

      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      initialRoute: "/login",
      routes: {
        "/": (context) => HomePage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}

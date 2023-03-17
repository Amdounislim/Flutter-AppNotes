import 'package:flutter/material.dart';

import 'package:app_login/auth/login.dart';
import 'package:app_login/auth/signup.dart';
import 'package:app_login/home/homepage.dart';
import 'package:app_login/crud/addnotes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primaryColor: Color(0xFF486E8B),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF486E8B)),
      ),
      routes: {
        "login": (context) => Login(),
        "signup": (context) => SignUp(),
        "homepage": (context) => HomePage(),
        "addnotes": (context) => AddNotes(),
      },
    );
  }
}

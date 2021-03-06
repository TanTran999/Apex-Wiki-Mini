import 'package:apex_wiki_mini/screens/info_screen.dart';
import 'package:apex_wiki_mini/screens/login_screen.dart';
import 'package:apex_wiki_mini/screens/register_screen.dart';
import 'package:apex_wiki_mini/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomeScreen(),
        "/login": (context) => LoginScreen(),
        "/register": (context) => RegisterScreen(),
        "/info": (context) => InfoScreen(),
      },
    );
  }
}
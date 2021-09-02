import 'package:apex_wiki_mini/screens/list_legend_screen.dart';
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/info_screen.dart';
import 'package:apex_wiki_mini/screens/welcome_screen.dart';
import 'package:apex_wiki_mini/screens/Login_screen.dart';
import 'package:apex_wiki_mini/screens/register_screen.dart';


class CustomPageRoute extends PageRoute {

  Map<String, Widget> map = {
    "/" : WelcomeScreen(),
    "/login": LoginScreen(),
    "/register" : RegisterScreen(),
    "/info" : InfoScreen(),
    "/list": ListLegendScreen(),
  };


  final String? name; 
  final Widget? child;
  CustomPageRoute({this.name, this.child});


  @override
  Color get barrierColor => primaryColor;

  @override
  String get barrierLabel => "";

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: name != null ? map[name] : child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 800);
}
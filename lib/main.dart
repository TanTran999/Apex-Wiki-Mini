import 'package:apex_wiki_mini/screens/info_screen.dart';
import 'package:apex_wiki_mini/screens/list_legend_screen.dart';
import 'package:apex_wiki_mini/screens/login_screen.dart';
import 'package:apex_wiki_mini/screens/register_screen.dart';
import 'package:apex_wiki_mini/screens/welcome_screen.dart';
import 'package:apex_wiki_mini/services/legends_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() async{
  //WidgetsFlutterBinding.ensureInitialized();
  // LegendDatabase data = LegendDatabase();
  // await data.init();
  // await data.cleanTable('legends');
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }
  void _init() async{
    LegendDatabase data = LegendDatabase();
    await data.init();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => WelcomeScreen(),
        "/login": (context) => LoginScreen(),
        "/register": (context) => RegisterScreen(),
        "/info": (context) => InfoScreen(),
        "/listLegend": (context) => ListLegendScreen(),
      },
    );
  }
}

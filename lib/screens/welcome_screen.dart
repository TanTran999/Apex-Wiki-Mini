import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(),
            Flexible(
              child: Column(
                children: [
                  Flexible(
                    child: SizedBox(
                      height: size.height,
                    ),
                  ),
                  Flexible(
                    child: Hero(
                      tag: "logo",
                      child: Logo(height: 150,)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "APEX WIKI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PrimaryButton(size: size, label: "Log in", onPress: (){Navigator.pushNamed(context, '/login');},),
                  SizedBox(height: 45,),
                  PrimaryButton(size: size, label: "Sign up", onPress: (){Navigator.pushNamed(context, '/register');},),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';

class InfoScreen extends StatelessWidget {
  static const routeName = "/info";
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
            Header(isBack: true, isInfo: false,),
            Flexible(
              flex: 3,
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
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Design and develop by", style: TextStyle(fontSize: 16, color: Colors.white),),
                  Text("NotaTechkitty and Tantran999", style: TextStyle(fontSize: 16, color: Colors.white),),
                  SizedBox(height: 24,),
                  Text("Contact: cometohololive@gmail.com", style: TextStyle(fontSize: 12, color: Colors.white),),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}


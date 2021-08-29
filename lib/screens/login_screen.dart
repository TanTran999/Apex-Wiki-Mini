import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';
import 'package:apex_wiki_mini/route_animation.dart';

class LoginScreen extends StatelessWidget {
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
            Header(isBack: true,),
            Flexible(
              child: SizedBox(
                height: size.height,
              ),
            ),
            Column(
              children: [
                Hero(
                  tag: "hero",
                  child: Logo(
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "APEX WIKI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Flexible(
              child: SizedBox(
                height: size.height,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "User name",
                  style: TextStyle(color: subColor, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                EnableTextField(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "Password",
                  style: TextStyle(color: subColor, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                EnableTextField(
                  isPassword: true,
                ),
              ],
            ),
            Flexible(
              child: SizedBox(
                height: size.height,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                     Navigator.push(context, CustomPageRoute(name: "/list"));
                  },
                  child: PrimaryButton(
                    size: size,
                    label: "Log in",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

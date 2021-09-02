import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:flutter/material.dart';

class LegendDetails extends StatelessWidget {
  final String realName;
  final String gender;
  final String age;
  final String height;
  final String homeWorld;

  LegendDetails(
      {this.realName = "",
      this.gender = "",
      this.age = "",
      this.height = "",
      this.homeWorld = ""});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 60,
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                alignment: Alignment.centerRight,
                child: Text(
                  "Real name",
                  style: labelStyle,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 60,
                alignment: Alignment.centerLeft,
                child: Text(
                  realName,
                  style: detailStyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 60,
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                alignment: Alignment.centerRight,
                child: Text(
                  "Gender",
                  style: labelStyle,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 60,
                alignment: Alignment.centerLeft,
                child: Text(
                  gender,
                  style: detailStyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 60,
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                alignment: Alignment.centerRight,
                child: Text(
                  "Age",
                  style: labelStyle,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 60,
                alignment: Alignment.centerLeft,
                child: Text(
                  age,
                  style: detailStyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 60,
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                alignment: Alignment.centerRight,
                child: Text(
                  "Height",
                  style: labelStyle,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 60,
                alignment: Alignment.centerLeft,
                child: Text(
                  height,
                  style: detailStyle,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 60,
                 padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                alignment: Alignment.centerRight,
                child: Text(
                  "Home World",
                  style: labelStyle,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 60,
                alignment: Alignment.centerLeft,
                child: Text(
                  homeWorld,
                  style: detailStyle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

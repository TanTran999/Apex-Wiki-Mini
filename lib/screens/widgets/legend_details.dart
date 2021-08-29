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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Real name",
                style: labelStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Gender",
                style: labelStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Age",
                style: labelStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Height",
                style: labelStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Home World",
                style: labelStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Flexible(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                realName,
                style: detailStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                gender,
                style: detailStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                age,
                style: detailStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                height,
                style: detailStyle,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                homeWorld,
                style: detailStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
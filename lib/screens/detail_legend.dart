import 'package:apex_wiki_mini/model/legends.dart';
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';
import 'package:apex_wiki_mini/model/legends_data.dart';

class DetailLegendScreen extends StatelessWidget {
  final int index;
  DetailLegendScreen({required this.index});
  static const routeName = "/detail";
  @override
  Widget build(BuildContext context) {
    final Legend valueLegend = listLegend[index];
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(valueLegend.path ?? ""), fit: BoxFit.cover),
                  ),
                ),
                Header(
                  isBack: true,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      valueLegend.legendName ?? "Unknow",
                      style: titleStyle,
                    ),
                  ),
                  Flexible(
                    child: LegendDetails(
                      realName: valueLegend.realName ?? "Unknow",
                      age: valueLegend.age.toString(),
                      height: valueLegend.height.toString(),
                      homeWorld: valueLegend.home ?? "Unknow",
                      gender: valueLegend.gender ?? "Unknow",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

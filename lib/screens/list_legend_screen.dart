import 'package:apex_wiki_mini/route_animation.dart';
import 'package:apex_wiki_mini/screens/detail_legend.dart';
import 'package:apex_wiki_mini/screens/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';
import 'package:apex_wiki_mini/model/legends_data.dart';

class ListLegendScreen extends StatelessWidget {
  static const routeName = "/list";
  @override
  Widget build(BuildContext context) {
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
                Logo(
                  height: 40,
                ),
                Header(
                  isBack: true,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: ListView.builder(
                  itemCount: listLegend.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 100,
                      child: LegendCard(
                        onPress: () {
                          print(index);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailLegendScreen(index: index,)));
                          //Navigator.push(context, CustomPageRoute(child: DetailLegend(index: index,)));
                        },
                        path: "${listLegend[index].path}",
                        name: "${listLegend[index].legendName}",
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
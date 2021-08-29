import 'package:apex_wiki_mini/Provider/legend_provider.dart';
import 'package:apex_wiki_mini/route_animation.dart';
import 'package:apex_wiki_mini/screens/detail_legend.dart';
import 'package:apex_wiki_mini/screens/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:apex_wiki_mini/model/legends.dart';

class ListLegendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
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
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: Consumer(
                    builder: (context, watch, _) {
                      return watch(legendProvider).when(
                        data: (List<Legend> value) {
                          return ListView.builder(
                            itemCount: value.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10),
                                height: 100,
                                child: LegendCard(
                                  onPress: () {
                                    // Navigator.push(context, CustomPageRoute(name: "/detail"));
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailLegend(id: index)),
                                    );
                                  },
                                  path: "assets/images/shion.png",
                                  name: value[index].legendName ?? "none",
                                ),
                              );
                            },
                          );
                        },
                        loading: () {
                          return CircularProgressIndicator();
                        },
                        error: (error, stackTrace) {
                          return Text("error");
                        },
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

// ListView.builder(
// itemCount: 18,
// itemBuilder: (context, index) {
// return Container(
// margin: EdgeInsets.only(top: 10, bottom: 10),
// height: 100,
// child: LegendCard(
// onPress: (){
// Navigator.push(context, CustomPageRoute(name: "/detail"));
// },
// path: "assets/images/shion.png",
// name: "Murasaki Shion",
// ),
// );
// },
// ),

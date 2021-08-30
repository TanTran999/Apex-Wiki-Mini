//import 'package:apex_wiki_mini/route_animation.dart';
import 'package:apex_wiki_mini/Provider/legend_provider.dart';
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:apex_wiki_mini/model/legends.dart';

class DetailLegend extends StatelessWidget {
  DetailLegend({required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
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
                        image: AssetImage("assets/images/shion.png"),
                        fit: BoxFit.cover),
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
              child: Consumer(
                builder: (context, watch, _){
                  return watch(legendProvider).when(
                      data: (List<Legend> legends){
                        return Column(
                          children: [
                            Center(
                              child: Text(
                                legends[id].legendName??"Unknown",
                                style: titleStyle,
                              ),
                            ),
                            Flexible(
                              child: LegendDetails(
                                realName: legends[id].realName??"Unknown",
                                age: legends[id].age!=null?legends[id].age.toString():"Unknown",
                                height: legends[id].height!=null?legends[id].height.toString():"Unknown",
                                homeWorld: legends[id].home??"Unknown",
                                gender: legends[id].gender??"Unknown",
                              ),
                            ),
                          ],
                        );
                      }, loading: (){
                        return CircularProgressIndicator();
                  },
                      error: (error, stackTrace){
                        return Text("error");
                      },);
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
// children: [
// Center(
// child: Text(
// "Murasaki Shion",
// style: titleStyle,
// ),
// ),
// Flexible(
// child: LegendDetails(
// realName: "Murasaki Shion",
// age: "unknow",
// height: "143 cm",
// homeWorld: "Hololive World",
// gender: "Female",
// ),
// ),
// ],
// ),
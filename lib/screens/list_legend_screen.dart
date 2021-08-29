import 'package:apex_wiki_mini/route_animation.dart';
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';

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
                Logo(height: 40,),
                Header(isBack: true,),
              ],
            ),
            SizedBox(height: 30,),
            Flexible(
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: ListView.builder(
                  itemCount: 18,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      height: 100,
                      child: GestureDetector(
                        onTap: (){
                           Navigator.push(context, CustomPageRoute(name: "/detail"));
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/shion.png"),
                                  fit: BoxFit.fill,
                                  ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Flexible(child: Center(
                              child: Text("Murasaki Shion", style: titleStyle,),
                            ),),
                          ],
                        ),
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

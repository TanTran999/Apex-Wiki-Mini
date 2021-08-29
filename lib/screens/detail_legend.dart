//import 'package:apex_wiki_mini/route_animation.dart';
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';
import 'package:apex_wiki_mini/screens/widgets/export.dart';

class DetailLegend extends StatelessWidget {
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
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage("assets/images/shion.png"), fit: BoxFit.cover),
                  ),
                ),
                Header(isBack: true,),
              ],
            ),
            SizedBox(height: 10,),
            Flexible(child: Column(
              children: [
                Center(child: Text("Murasaki Shion", style: titleStyle,),),
                Flexible(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Real name", style: labelStyle,),
                          SizedBox(height: 16,),
                          Text("Gender", style: labelStyle,),
                          SizedBox(height: 16,),
                          Text("Age", style: labelStyle,),
                          SizedBox(height: 16,),
                          Text("Height", style: labelStyle,),
                          SizedBox(height: 16,),
                          Text("Home World", style: labelStyle,),
                        ],
                      ),
                    ),
                    SizedBox(width: 12,),
                    Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Murasaki Shion", style: detailStyle,),
                          SizedBox(height: 16,),
                          Text("Female", style: detailStyle,),
                          SizedBox(height: 16,),
                          Text("Unknow", style: detailStyle,),
                          SizedBox(height: 16,),
                          Text("145 cm", style: detailStyle,),
                          SizedBox(height: 16,),
                          Text("Hololive World", style: detailStyle,),
                        ],
                      ),
                    ),
                  ],
                ),),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';

class LegendCard extends StatelessWidget {
  final Function()? onPress;
  final String path;
  final String name;

  LegendCard({this.onPress, this.path = "", this.name = ""});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(path),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Flexible(
              child: Center(
                child: Text(
                  name,
                  style: titleStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

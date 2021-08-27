import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';

class IconButtons extends StatelessWidget {
  final IconData icon;
  final double size;
  final bool isBack;
  final bool isInfo;
  IconButtons({required this.icon, this.size = 15, this.isBack = false, this.isInfo = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(isBack){
          Navigator.pop(context);
        }
        if(isInfo){
          Navigator.pushNamed(context, "/info");
        }
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: subColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: size,
          color: subColor,
        ),
      ),
    );
  }
}
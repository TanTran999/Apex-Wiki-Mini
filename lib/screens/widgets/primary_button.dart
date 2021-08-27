import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';

class PrimaryButton extends StatelessWidget {

  final Size size;
  final String label;
  final Function()? onPress;

  PrimaryButton({required this.size, this.label = "", this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 50,
        width: size.width - 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [customColor1, customColor2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
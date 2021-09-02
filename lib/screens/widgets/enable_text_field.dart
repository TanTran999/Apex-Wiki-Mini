import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/theme/const.dart';

class EnableTextField extends StatelessWidget {
  final bool isPassword;
  EnableTextField({this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      autocorrect: isPassword ? false : true,
      enableSuggestions: isPassword ? false : true,
      obscureText: isPassword ? true : false,
      cursorColor: Colors.indigoAccent,
      style: TextStyle(fontSize: 18, color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        //isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 1,
            color: subColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 1,
            color: subColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 1,
            color: subColor,
          ),
        ),
      ),
    );
  }
}
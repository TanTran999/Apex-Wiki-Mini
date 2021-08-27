import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double? height;

  Logo({this.height});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/rushiabruh.png"),
      height: height,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:apex_wiki_mini/screens/widgets/icon_button.dart';

class Header extends StatelessWidget {
  final bool isBack;
  final bool isInfo;

  Header({this.isBack = false, this.isInfo = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButtons(
                isBack: isBack,
                icon: Icons.arrow_back_ios_new,
              ),
            ],
          ),
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButtons(
                isInfo: isInfo,
                icon: Icons.info_outline,
                size: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  CircleButton({
    Key key,
    this.icon,
    this.onClick,
  }) : super(key: key);
  final Icon icon;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: CircleAvatar(
          backgroundColor: kBlack.withOpacity(0.5),
          child: icon,
        ),
      ),
    );
  }
}

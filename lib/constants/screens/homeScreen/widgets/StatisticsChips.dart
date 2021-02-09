import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:flutter/material.dart';

class StatisticsTimelineChips extends StatelessWidget {
  final bool activeStatus;
  final Function onTap;

  StatisticsTimelineChips({
    Key key,
    @required this.text,
    @required this.activeStatus,
    this.onTap,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 120,
            horizontal: MediaQuery.of(context).size.width / 130),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 40),
            // width: width,
            height: MediaQuery.of(context).size.height / 35,
            decoration: BoxDecoration(
                color: activeStatus ? kPink : kGreen.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(
                text, //kco,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Popins',
                    color:
                        activeStatus ? Colors.white : kBlack.withOpacity(0.5),
                    fontSize: MediaQuery.of(context).size.height / 70),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

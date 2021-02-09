import 'package:aparantiya_agent/constants/Provider/ProviderModifier.dart';
import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:aparantiya_agent/constants/enums/enum.dart';
import 'package:aparantiya_agent/constants/screens/AddCropsScreen/data/data.dart';
import 'package:aparantiya_agent/constants/screens/homeScreen/widgets/StatisticsChips.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class statisticsTimelineChipsGroup extends StatelessWidget {
  bool today;
  bool yesterday;
  bool thisWeek;
  bool thisMonth;

  String achievedScore;
  String outOff;
  String farmersAdded;

  double headingSize;
  double appBarTitleSize;
  double textSize;

  @override
  Widget build(BuildContext context) {
    headingSize = MediaQuery.of(context).size.height / 45;
    appBarTitleSize = MediaQuery.of(context).size.height / 40;
    textSize = MediaQuery.of(context).size.height / 60;

    if (Provider.of<ProviderModifier>(context, listen: true).timeline ==
        Timeline.today) {
      Today object = Today();
      today = true;
      yesterday = false;
      thisWeek = false;
      thisMonth = false;
      achievedScore = object.achievedScore;
      outOff = object.outOff;
      farmersAdded = object.farmerAdded;
    } else if (Provider.of<ProviderModifier>(context, listen: true).timeline ==
        Timeline.yesterday) {
      Yesterday object = Yesterday();
      today = false;
      yesterday = true;
      thisWeek = false;
      thisMonth = false;
      achievedScore = object.achievedScore;
      outOff = object.outOff;
      farmersAdded = object.farmerAdded;
    } else if (Provider.of<ProviderModifier>(context, listen: true).timeline ==
        Timeline.thisWeek) {
      ThisWeek object = ThisWeek();
      today = false;
      yesterday = false;
      thisWeek = true;
      thisMonth = false;
      achievedScore = object.achievedScore;
      outOff = object.outOff;
      farmersAdded = object.farmerAdded;
    } else if (Provider.of<ProviderModifier>(context, listen: true).timeline ==
        Timeline.thisMonth) {
      ThisMonth object = ThisMonth();
      today = false;
      yesterday = false;
      thisWeek = false;
      thisMonth = true;
      achievedScore = object.achievedScore;
      outOff = object.outOff;
      farmersAdded = object.farmerAdded;
    }

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 24),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: StatisticsTimelineChips(
                    text: 'Today',
                    activeStatus: today,
                    onTap: () {
                      Provider.of<ProviderModifier>(context, listen: false)
                          .updateTimeline(Timeline.today);
                    },
                  )),
              Expanded(
                  flex: 1,
                  child: StatisticsTimelineChips(
                    text: 'Yesterday',
                    activeStatus: yesterday,
                    onTap: () {
                      Provider.of<ProviderModifier>(context, listen: false)
                          .updateTimeline(Timeline.yesterday);
                    },
                  )),
              Expanded(
                  flex: 1,
                  child: StatisticsTimelineChips(
                    text: 'This Week',
                    activeStatus: thisWeek,
                    onTap: () {
                      Provider.of<ProviderModifier>(context, listen: false)
                          .updateTimeline(Timeline.thisWeek);
                    },
                  )),
              Expanded(
                flex: 1,
                child: StatisticsTimelineChips(
                  text: 'This Month',
                  activeStatus: thisMonth,
                  onTap: () {
                    Provider.of<ProviderModifier>(context, listen: false)
                        .updateTimeline(Timeline.thisMonth);
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 22,
              vertical: MediaQuery.of(context).size.height / 65),
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            elevation: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(
                  //     color: kBlack.withOpacity(0.3), width: 4),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Target Statistics',
                      style: TextStyle(
                          color: kPink,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Popins',
                          fontSize: headingSize),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 22,
                        vertical: MediaQuery.of(context).size.height / 65),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Achieved Score',
                                style: TextStyle(
                                    color: kBlack.withOpacity(0.5),
                                    fontFamily: 'Popins',
                                    fontSize: textSize),
                              ),
                              Text(
                                achievedScore,
                                style: TextStyle(
                                    color: kBlack,
                                    fontFamily: 'Playfair',
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            15),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Out off',
                                style: TextStyle(
                                    color: kBlack.withOpacity(0.5),
                                    fontFamily: 'Popins',
                                    fontSize: textSize),
                              ),
                              Text(
                                outOff,
                                style: TextStyle(
                                    color: kBlack,
                                    fontFamily: 'Playfair',
                                    fontSize:
                                        MediaQuery.of(context).size.height /
                                            15),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 22,
                        vertical: MediaQuery.of(context).size.height / 65),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Farmers Added',
                          style: TextStyle(
                              color: kBlack.withOpacity(0.5),
                              fontFamily: 'Popins',
                              fontSize: textSize),
                        ),
                        Text(
                          farmersAdded,
                          style: TextStyle(
                              color: kBlack,
                              fontFamily: 'Playfair',
                              fontSize:
                                  MediaQuery.of(context).size.height / 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

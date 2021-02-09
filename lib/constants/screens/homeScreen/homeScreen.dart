import 'package:aparantiya_agent/constants/Provider/ProviderModifier.dart';
import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:aparantiya_agent/constants/enums/enum.dart';
import 'package:aparantiya_agent/constants/screens/AddCropsScreen/Widget/statisticsTimelineChipsGroup.dart';
import 'package:aparantiya_agent/constants/screens/AddNewScreen/NewFarmerScreen.dart';
import 'package:aparantiya_agent/constants/screens/homeScreen/widgets/StatisticsChips.dart';
import 'package:aparantiya_agent/constants/widgets/AppDrawer.dart';
import 'package:aparantiya_agent/constants/widgets/QRCodeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  double headingSize;
  double appBarTitleSize;
  double textSize;

  @override
  Widget build(BuildContext context) {
    headingSize = MediaQuery.of(context).size.height / 45;
    appBarTitleSize = MediaQuery.of(context).size.height / 40;
    textSize = MediaQuery.of(context).size.height / 60;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 8,
        color: kPink,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: kBlack),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Aparantiya',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: appBarTitleSize,
                color: Colors.black54,
                fontFamily: 'Baskerville',
              ),
            ),
            //FaIcon(FontAwesomeIcons.qrcode)
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QRCodeScreen(
                                id: '1002332445',
                              )));
                },
                child: Material(
                  elevation: 6,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 25,
                    child: Image.asset(
                      'images/qrcode.png',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: AppDrawer(),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 70),
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      // child: Image.asset('images/profile.png'),
                      backgroundImage: AssetImage('images/profile.png'),
                      radius: MediaQuery.of(context).size.height / 20,
                      backgroundColor: kBlack,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Vishal More',
                          style: TextStyle(
                              color: kBlack,
                              fontFamily: 'Baskerville',
                              fontSize: headingSize),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 70,
                        ),
                        Text(
                          'Id : 100232321',
                          style: TextStyle(
                              color: kBlack,
                              fontFamily: 'Baskerville',
                              fontSize: textSize),
                        )
                      ],
                    )
                  ],
                ),
              ),
              statisticsTimelineChipsGroup(),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 30),
            child: Material(
              elevation: 4,
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90),
                  bottomLeft: Radius.circular(90)),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewFarmerScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: kBlack.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90),
                          bottomLeft: Radius.circular(90))),
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: MediaQuery.of(context).size.height / 11,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                      ),
                      Text(
                        'New Farmer',
                        style: TextStyle(
                            color: Colors.white, fontSize: headingSize),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

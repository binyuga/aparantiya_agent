import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:aparantiya_agent/constants/screens/homeScreen/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Widget/CropInputTab.dart';

class AddCropsScreen extends StatefulWidget {
  @override
  _AddCropsScreenState createState() => _AddCropsScreenState();
}

class _AddCropsScreenState extends State<AddCropsScreen> {
  List<CropInputTab> list = [];
  double headingSize;
  double appBarTitleSize;
  double textSize;

  @override
  Widget build(BuildContext context) {
    headingSize = MediaQuery.of(context).size.height / 45;
    appBarTitleSize = MediaQuery.of(context).size.height / 40;
    textSize = MediaQuery.of(context).size.height / 60;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlack),
        title: Text(
          'Crops',
          style: TextStyle(
              color: kBlack,
              fontFamily: 'Baskerville',
              fontSize: appBarTitleSize,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomeScreen()),
              (Route<dynamic> route) => false);
        },
        child: Container(
          color: kPink,
          height: MediaQuery.of(context).size.height / 12,
          child: Center(
            child: Text(
              'Save',
              style: TextStyle(
                  fontFamily: 'Baskerville',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: appBarTitleSize),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: list,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 55,
                horizontal: MediaQuery.of(context).size.width / 20),
            child: Row(
              children: <Widget>[
                Expanded(flex: 2, child: Container()),
                Expanded(
                  flex: 2,
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          list.add(CropInputTab());
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: kBlack,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        height: MediaQuery.of(context).size.height / 17,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            Text(
                              'Add New Crop',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Popins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: textSize),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    list.add(CropInputTab());
  }
}

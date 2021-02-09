import 'package:aparantiya_agent/constants/Provider/ProviderModifier.dart';
import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:aparantiya_agent/constants/screens/AddCropsScreen/AddCropsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class NewFarmerScreen extends StatelessWidget {
  bool gpsData = false;
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
          'Add New Farmer',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kBlack,
              fontFamily: 'Baskerville',
              fontSize: appBarTitleSize),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddCropsScreen()));
        },
        child: Container(
          color: kPink,
          height: MediaQuery.of(context).size.height / 12,
          child: Center(
            child: Text(
              'Next',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Baskerville',
                  fontSize: appBarTitleSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 35,
                horizontal: MediaQuery.of(context).size.width / 20),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Name & Contact',
                      style: TextStyle(
                          color: kBlack,
                          fontSize: MediaQuery.of(context).size.height / 45),
                    ),
                    TextFormField(
                      style: TextStyle(
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Popins',
                          fontSize: headingSize),
                      textAlign: TextAlign.start,
                      onFieldSubmitted: (newValue) {},
                      decoration: InputDecoration(
                          labelText: 'Full Name',
                          labelStyle:
                              TextStyle(color: kPink, fontSize: textSize),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1,
                              horizontal:
                                  MediaQuery.of(context).size.width / 20),
                          prefix: Text('Mr.  '),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kPink,
                                width: 3,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: kBlack.withOpacity(0.5),
                                  width: 3,
                                  style: BorderStyle.solid)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow),
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                          ),
                          fillColor: Colors.transparent,
                          filled: true),
                      onChanged: (value) {},
                    ),
                    TextFormField(
                      style: TextStyle(
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Popins',
                          fontSize: MediaQuery.of(context).size.height / 55),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.phone,
                      onFieldSubmitted: (newValue) {},
                      decoration: InputDecoration(
                          prefix: Text('+91   '),
                          labelText: 'Contact Number',
                          labelStyle:
                              TextStyle(color: kPink, fontSize: textSize),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1,
                              horizontal:
                                  MediaQuery.of(context).size.width / 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kPink,
                                width: 3,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: kBlack.withOpacity(0.5),
                                  width: 3,
                                  style: BorderStyle.solid)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow),
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                          ),
                          fillColor: Colors.transparent,
                          filled: true),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 35,
                horizontal: MediaQuery.of(context).size.width / 20),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              elevation: 3,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                height: MediaQuery.of(context).size.height / 3.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Address & Location',
                      style: TextStyle(color: kBlack, fontSize: headingSize),
                    ),
                    TextFormField(
                      style: TextStyle(
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Popins',
                          fontSize: MediaQuery.of(context).size.height / 55),
                      textAlign: TextAlign.start,
                      onFieldSubmitted: (newValue) {},
                      decoration: InputDecoration(
                          labelText: 'District',
                          labelStyle:
                              TextStyle(color: kPink, fontSize: textSize),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1,
                              horizontal:
                                  MediaQuery.of(context).size.width / 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kPink,
                                width: 3,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: kBlack.withOpacity(0.5),
                                  width: 3,
                                  style: BorderStyle.solid)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow),
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                          ),
                          fillColor: Colors.transparent,
                          filled: true),
                      onChanged: (value) {},
                    ),
                    TextFormField(
                      style: TextStyle(
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Popins',
                          fontSize: textSize),
                      textAlign: TextAlign.start,
                      onFieldSubmitted: (newValue) {},
                      decoration: InputDecoration(
                          labelText: 'Taluqa',
                          labelStyle: TextStyle(
                            color: kPink,
                            fontSize: textSize,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1,
                              horizontal:
                                  MediaQuery.of(context).size.width / 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kPink,
                                width: 3,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: kBlack.withOpacity(0.5),
                                  width: 3,
                                  style: BorderStyle.solid)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow),
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                          ),
                          fillColor: Colors.transparent,
                          filled: true),
                      onChanged: (value) {},
                    ),
                    TextFormField(
                      style: TextStyle(
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Popins',
                          fontSize: textSize),
                      textAlign: TextAlign.start,
                      onFieldSubmitted: (newValue) {},
                      decoration: InputDecoration(
                          labelText: 'Village',
                          labelStyle: TextStyle(
                              color: kPink,
                              fontSize:
                                  MediaQuery.of(context).size.height / 55),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 1,
                              horizontal:
                                  MediaQuery.of(context).size.width / 20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: kPink,
                                width: 3,
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  color: kBlack.withOpacity(0.5),
                                  width: 3,
                                  style: BorderStyle.solid)),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow),
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                          ),
                          fillColor: Colors.transparent,
                          filled: true),
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 35,
                horizontal: MediaQuery.of(context).size.width / 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    children: <Widget>[
                      Checkbox(
                        value:
                            Provider.of<ProviderModifier>(context, listen: true)
                                .gpsLocationAccess,
                        checkColor: Colors.white,
                        focusColor: kPink,
                      ),
                      Text(
                        'GPS Location',
                        style: TextStyle(
                            color: kBlack,
                            fontFamily: 'Popins',
                            fontSize: MediaQuery.of(context).size.height / 65),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    gpsData == true ? gpsData = false : gpsData = true;
                    Provider.of<ProviderModifier>(context, listen: false)
                        .updateGPSLocationAccess(gpsData);
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: gpsData ? Colors.grey.withOpacity(0.3) : kPink,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: MediaQuery.of(context).size.height / 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.my_location,
                            size: 30,
                            color: gpsData ? kBlack : Colors.white,
                          ),
                          Text(
                            gpsData ? 'Cancel' : 'Get Location',
                            style: TextStyle(
                                color: gpsData ? kBlack : Colors.white,
                                fontFamily: 'Popins',
                                fontSize: textSize),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}

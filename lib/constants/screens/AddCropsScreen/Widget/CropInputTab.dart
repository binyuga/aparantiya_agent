import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:aparantiya_agent/constants/screens/AddCropsScreen/Widget/CircleButton.dart';
import 'package:flutter/material.dart';

class CropInputTab extends StatelessWidget {
  CropInputTab({
    Key key,
  }) : super(key: key);

  double headingSize;
  double appBarTitleSize;
  double textSize;

  @override
  Widget build(BuildContext context) {
    headingSize = MediaQuery.of(context).size.height / 45;
    appBarTitleSize = MediaQuery.of(context).size.height / 40;
    textSize = MediaQuery.of(context).size.height / 60;
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(vertical: BorderSide(color: kBlack, width: 2)),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height / 35,
            horizontal: MediaQuery.of(context).size.width / 20),
        decoration: BoxDecoration(
          color: kYellow.withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Center(
                      child: Text(
                    'Crop Details',
                    style: TextStyle(
                        fontFamily: 'Baskerville',
                        color: kBlack,
                        fontSize: textSize,
                        fontWeight: FontWeight.bold),
                  )),
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
                      suffix: Icon(
                        Icons.keyboard_arrow_down,
                        color: kPink,
                      ),
                      labelText: 'Crop Name',
                      labelStyle: TextStyle(color: kPink, fontSize: textSize),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 1,
                          horizontal: MediaQuery.of(context).size.width / 20),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: kPink, width: 3, style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              color: kBlack.withOpacity(0.5),
                              width: 3,
                              style: BorderStyle.solid)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow),
                        borderRadius: BorderRadius.all(Radius.circular(0.0)),
                      ),
                      fillColor: Colors.transparent,
                      filled: true),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: CircleButton(
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        onClick: () {},
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            color: kBlack,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Popins',
                            fontSize: MediaQuery.of(context).size.height / 55),
                        textAlign: TextAlign.start,
                        onFieldSubmitted: (newValue) {},
                        decoration: InputDecoration(
                            labelText: 'Number of Plants',
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
                    ),
                    Expanded(
                      child: CircleButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onClick: () {},
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Center(
                      child: Text(
                    'Approx age of Plants',
                    style: TextStyle(
                        fontFamily: 'Baskerville',
                        color: kBlack,
                        fontSize: textSize,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: TextFormField(
                          style: TextStyle(
                              color: kBlack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Popins',
                              fontSize: textSize),
                          textAlign: TextAlign.start,
                          onFieldSubmitted: (newValue) {},
                          decoration: InputDecoration(
                              labelText: 'Mini',
                              labelStyle: TextStyle(color: kPink),
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
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: TextFormField(
                          style: TextStyle(
                              color: kBlack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Popins',
                              fontSize:
                                  MediaQuery.of(context).size.height / 55),
                          textAlign: TextAlign.start,
                          onFieldSubmitted: (newValue) {},
                          decoration: InputDecoration(
                              labelText: 'Max',
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
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        style: TextStyle(
                            color: kBlack,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Popins',
                            fontSize: textSize),
                        textAlign: TextAlign.start,
                        onFieldSubmitted: (newValue) {},
                        decoration: InputDecoration(
                            labelText: 'Year',
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
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 50),
                  child: Center(
                      child: Text(
                    'Last Yield Detail',
                    style: TextStyle(
                        fontFamily: 'Baskerville',
                        color: kBlack,
                        fontSize: textSize,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: TextFormField(
                          style: TextStyle(
                              color: kBlack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Popins',
                              fontSize: textSize),
                          textAlign: TextAlign.start,
                          onFieldSubmitted: (newValue) {},
                          decoration: InputDecoration(
                              labelText: 'Last yield',
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
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        style: TextStyle(
                            color: kBlack,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Popins',
                            fontSize: textSize),
                        textAlign: TextAlign.start,
                        onFieldSubmitted: (newValue) {},
                        decoration: InputDecoration(
                            labelText: 'Quintal',
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
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

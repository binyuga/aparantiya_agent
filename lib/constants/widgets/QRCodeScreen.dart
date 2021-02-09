import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeScreen extends StatelessWidget {
  QrImage qrCode;
  final String id;

  QRCodeScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    qrCode = QrImage(
      data: id,
      version: QrVersions.auto,
      size: MediaQuery.of(context).size.height / 4,
      gapless: false,
    );
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 8,
        color: kPink,
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kBlack),
        title: Text(
          'Aparantiya',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height / 35,
            color: Colors.black54,
            fontFamily: 'Baskerville',
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(child: qrCode),
          ),
          Text(
            'Vishal More',
            style: TextStyle(
                color: kPink,
                fontFamily: 'Popins',
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          Text('id : 120304039')
        ],
      ),
    );
  }
}

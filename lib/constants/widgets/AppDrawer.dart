import 'package:aparantiya_agent/constants/color/color.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: 'mfarm',
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: kPink,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  //backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/appicon.png"),
                  radius: 30,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Aparantiya',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Baskerville',
                      color: Colors.white,
                      fontSize: 20),
                ),
                Text(
                  'Agent',
                  style: TextStyle(
                    fontFamily: 'Baskerville',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'My Profile',
              style: TextStyle(fontFamily: 'Popins', color: Colors.grey),
            ),
          ),
          ListTile(
            title: Text('Settings',
                style: TextStyle(fontFamily: 'Popins', color: Colors.grey)),
          ),
          ListTile(
            title: Text('Log out',
                style: TextStyle(fontFamily: 'Popins', color: Colors.grey)),
          )
        ],
      ),
    );
  }
}

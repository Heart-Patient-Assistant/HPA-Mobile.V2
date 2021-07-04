import 'package:flutter/material.dart';
import 'package:hp_assistant/Blog2.dart';
import 'package:hp_assistant/Menu2.dart';

import 'DoctorProfile.dart';
import 'Menu.dart';

class Home2 extends StatefulWidget {

  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          FlatButton.icon(
            label: Text(''),
            onPressed: null,
            icon: Icon(Icons.home_rounded, color: Colors.teal.shade600,size: 50,),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => DoctorProfile()),
                ModalRoute.withName('/DoctorProfile'),
              );
            },
            icon: Icon(Icons.account_circle_rounded,),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Blog2()),
                ModalRoute.withName('/Blog2'),
              );
            },
            icon: Icon(Icons.add_comment_rounded,),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Menu2()),
                ModalRoute.withName('/Menu2'),
              );
            },
            icon: Icon(Icons.menu_rounded, ),
          ),
          new Padding(padding: EdgeInsets.only(right: 15.0)),
        ],
        backgroundColor: Colors.white ,
      ),
        body: new Column(
          children: [
            new Padding(padding: EdgeInsets.only(top: 40.0)),
            new Container(
                margin: EdgeInsets.only(top: 50.0),
                alignment: Alignment.center,
                child: new Text(
                  "Welcome User!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 40.0,
                      fontStyle: FontStyle.italic),
                ))
          ],
        )
    );
  }
}

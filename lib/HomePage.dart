import 'package:flutter/material.dart';
import 'package:hp_assistant/Blog.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:hp_assistant/TipsForThePatient.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  MaterialPageRoute(builder: (BuildContext context) => Blog()),
                  ModalRoute.withName('/Blog'),
                );
              },
              icon: Icon(Icons.add_comment_rounded,),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Menu()),
                  ModalRoute.withName('/Done'),
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
        ));
  }
}

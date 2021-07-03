

import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';

import 'PatientProfile.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return new Scaffold(
        appBar: AppBar(
          actions: [
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()),
                  ModalRoute.withName('/HomePage'),
                );
              },
              icon: Icon(
                Icons.home_rounded,
              ),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PatientProfile()),
                  ModalRoute.withName('/PatientProfile'),
                );
              },
              icon: Icon(
                Icons.account_circle_rounded,
              ),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: null,
              icon: Icon(
                Icons.add_comment_rounded,
                color: Colors.teal.shade600,
                size: 50,
              ),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Menu()),
                  ModalRoute.withName('/Menu'),
                );
              },
              icon: Icon(
                Icons.menu_rounded,
              ),
            ),
            new Padding(padding: EdgeInsets.only(right: 15.0)),
          ],
          backgroundColor: Colors.white,
        ),
        body: new ListView(children: [
          new Row(
            children: [
              new Container(
                margin: EdgeInsets.only(top: h * 0.03, left: w * 0.2),
                child: Text(
                  'Create new post  ',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      color: Colors.teal.shade600,
                      fontWeight: FontWeight.bold),
                ),
              ),
              new Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: h * 0.03, right: w * 0.2),
                child: new FloatingActionButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/newPost');
                  },
                  child: Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  backgroundColor: Colors.teal.shade600,
                ),
              )
            ],
          ),

          new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: h * 0.03, right: w * 0.2),
            child: new Card(),
          )
        ]));
  }
}

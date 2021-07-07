import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade600,
        title: Text(
          "Tips",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),
        ),),
      body: Container(
        margin: EdgeInsets.only(top:30,left: 12),
        child: ListView(
          children: [
            Text(
              "What can you do to lower the risk of any heart disease ?",
              style: TextStyle(fontSize: 24,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold, ),
            ),
        new Padding(padding: EdgeInsets.only(top:22.0)),
            Text(
              " - Control your blood pressure.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:10.0)),
            Text(
              " - Keep your cholesterol and triglyceride levels under control.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),

            ),
            new Padding(padding: EdgeInsets.only(top:10.0)),
            Text(" - Stay at a healthy weight.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),

            new Padding(padding: EdgeInsets.only(top:10.0)),
            Text(" - Eat a healthy food.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:10.0)),
            Text(" - Get regular exercise.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:10.0)),
            Text(" - Limit alcohol.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:10.0)),
            Text(" - Don't smoke.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:10)),
            Text(" - Manage stress.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:10.0)),
            Text(" - Manage diabetes.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:10)),
            Text(" - Make sure that you get enough sleep.",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'Raleway',fontWeight: FontWeight.bold,),
            ),
            new Padding(padding: EdgeInsets.only(top:45.0)),

          new Container(margin: EdgeInsets.only(left: 98, right: 98),
            height: 48,
            child:   RaisedButton(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
              color: Colors.teal.shade600,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/PatientProfile', (Route<dynamic> route) => false,
                    arguments: {});
              },
              child: new Text(
                'Skip',
                style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
              ),),
          )
          ],
        ),
      ),
    );
  }
}

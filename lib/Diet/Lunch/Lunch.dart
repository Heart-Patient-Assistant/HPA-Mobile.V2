import 'package:flutter/material.dart';
import 'package:hp_assistant/Diet/Breakfast/Meal1.dart';
import 'package:hp_assistant/Diet/Breakfast/Meal2.dart';
import 'package:hp_assistant/Diet/Breakfast/Meal3.dart';
import 'package:hp_assistant/Diet/Lunch/Meal4.dart';
import 'package:hp_assistant/Diet/Lunch/Meal5.dart';
import 'package:hp_assistant/Diet/Lunch/Meal6.dart';

class Lunch extends StatefulWidget {

  @override
  _LunchState createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lunch",style: TextStyle(
            fontSize: 22,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body:  new Container(
        child: Center(
          child: new Column(
            children: [
              new Padding(padding: EdgeInsets.only(top: h*0.25)),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Meal4(),
                  ));
                },
                child: Text(
                  "Meal-1",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,
              ),
              new Padding(padding: EdgeInsets.all(20.0)),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Meal5(),
                  ));
                },
                child: Text(
                  "Meal-2",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,
              ),
              new Padding(padding: EdgeInsets.all(20.0)),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Meal6(),
                  ));
                },
                child: Text(
                  "Meal-3",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,
              ),
              new Padding(padding: EdgeInsets.all(20.0)),
            ],
          ),
        ),
      ),
    );  }
}

import 'package:flutter/material.dart';
import 'package:hp_assistant/Diet/Dinner/Meal7.dart';
import 'package:hp_assistant/Diet/Dinner/Meal8.dart';
import 'package:hp_assistant/Diet/Dinner/Meal9.dart';

class Dinner extends StatefulWidget {

  @override
  _DinnerState createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dinner",style: TextStyle(
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
                    builder: (BuildContext context) => new Meal7(),
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
                    builder: (BuildContext context) => new Meal8(),
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
                    builder: (BuildContext context) => new Meal9(),
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
    ); }
}

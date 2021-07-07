import 'package:flutter/material.dart';
import 'package:hp_assistant/Diet/Breakfast/Breakfast.dart';
import 'package:hp_assistant/Diet/Dinner/Dinner.dart';
import 'package:hp_assistant/Diet/Lunch/Lunch.dart';

class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Diet",style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body: new Container(
        child: Center(
          child: new Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Image.asset(
                'img/diet.axd.webp',
                height: 300.0,
                width: 600.0,
              ),
              new Padding(padding: EdgeInsets.only(top: h*0.03)),
              new Text("Choose the type of your meal :",style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
              ),
              new Padding(padding: EdgeInsets.only(top: h*0.05)),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Breakfast(),
                      )
                  );
                },
                child: Text(
                  "Breakfast",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),
              new Padding(padding: EdgeInsets.only(top: h*0.04)),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Lunch(),
                      )
                  );
                },
                child: Text(
                  "Lunch",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),
              new Padding(padding: EdgeInsets.only(top: h*0.04)),

              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Dinner(),
                      )
                  );
                },
                child: Text(
                  "Dinner",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),
              new Padding(padding: EdgeInsets.only(top: h*0.04)),

            ],
          ),
        ),
      ),
    );
  }
}

































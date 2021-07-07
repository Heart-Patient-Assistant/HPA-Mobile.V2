import 'package:flutter/material.dart';
import 'package:hp_assistant/Activities/Activities.dart';
import 'package:hp_assistant/Diet/Diet.dart';
import 'package:hp_assistant/HealthRecord.dart';

import 'PredicitionModel.dart';
import 'TipsForThePatient.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Services Page',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 22,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ) ,
      body:new Container(
        child: Center(
          child: Column(
            children: [
              new Padding(padding: EdgeInsets.all(25.0)),
              new Image.asset(
                'img/heart.jpg',
                height: 200.0,
                width: 350.0,
              ),

              new Padding(padding: EdgeInsets.all(25.0)),
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Tips(),
                      )
                  );
                },
                child: Text(
                  "Tips",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),
              new Padding(padding: EdgeInsets.all(15.0)),

              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Diet(),
                      )
                  );
                },
                child: Text(
                  "Diet",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),
              new Padding(padding: EdgeInsets.all(15.0)),

              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new Activities(),
                      )
                  );
                },
                child: Text(
                  "Activities",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),

              new Padding(padding: EdgeInsets.all(15.0)),

              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new PredictionModel(),
                      )
                  );
                },
                child: Text(
                  "Get Predictions",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),

              new Padding(padding: EdgeInsets.all(15.0)),
              
              new RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new HealthRecord(),
                      )
                  );

                },
                child: Text(
                  "My Health Record",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,),

            ],
          ),
        ),
      )

    );
  }
}
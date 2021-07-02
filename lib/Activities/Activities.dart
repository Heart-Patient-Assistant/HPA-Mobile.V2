import 'package:flutter/material.dart';

class Activities extends StatefulWidget {

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Activities",style: TextStyle(
            fontSize: 22,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body:Container(
        child: Column(
          children: [
            new Padding(padding: EdgeInsets.all(25.0)),
            new Image.asset(
              'img/activity.jpg',
              height: 300.0,
              width: 600.0,
            ),
            new Text("Three Kinds of Exercise That Boost Heart Health",style: TextStyle(
                fontSize: 22,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );

  }
}

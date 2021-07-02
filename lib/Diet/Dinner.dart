import 'package:flutter/material.dart';

class Dinner extends StatefulWidget {

  @override
  _DinnerState createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dinner",style: TextStyle(
            fontSize: 22,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body: new Container(

      ),
    );  }
}

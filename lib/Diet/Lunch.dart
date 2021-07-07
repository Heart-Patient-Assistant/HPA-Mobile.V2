import 'package:flutter/material.dart';

class Lunch extends StatefulWidget {

  @override
  _LunchState createState() => _LunchState();
}

class _LunchState extends State<Lunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Lunch",style: TextStyle(
            color: Theme.of(context).primaryColor,
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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';


class Readings {
  final String heartRate  ;
  final String spo2  ;
  Readings(this.heartRate , this.spo2);

}


class HealthRecord extends StatefulWidget {

  @override
  _HealthRecordState createState() => _HealthRecordState();
}

class _HealthRecordState extends State<HealthRecord> {
  var _readingsJson = [ ];

  getSensorsData ()async{
    final response = await http.get(Uri.parse("https://mahdy.pythonanywhere.com/api/users/sensor/"),
      headers: <String, String>{
        'Content-Type': "application/json; charset=UTF-8",
        "Vary": "Accept",

      },
    );

    final jsonData = jsonDecode(response.body) ;
    // List<Readings> readings = [];
    //
    // for (var u in jsonData){
    //   Readings reading = Readings(u["HeartRate"], u["SpO2"]);
    //   readings.add(reading);
    // }
    // print(readings.length);
    // return readings ;

    setState(() {
      _readingsJson = jsonData ;
    });


  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSensorsData();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Health Record',
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ) ,
      // body: ListView.builder(itemCount : _readingsJson.length,
      //     itemBuilder: (context,i){
      //   final read = _readingsJson[i];
      //   return Text("${read["HeartRate"]}");
      //
      //     })
      body: Center(
        child: Column(
          children: [
            new Padding(padding: EdgeInsets.only(top:h*0.03)),

            new Text("Your Vital Readings",style: TextStyle(
                color: Colors.teal,
                fontSize: 22,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
            ),

            ListTile(
              title: Text ('Heart Rate :'),
              subtitle:Text('86'),
            ),
            new Padding(padding: EdgeInsets.only(top:h*0.01)),

            ListTile(
              title: Text ("Oxygen Level 'SpO2' :"),
              subtitle:Text('95%'),
            ),
          ],
        ),
      ),
    );
  }
}

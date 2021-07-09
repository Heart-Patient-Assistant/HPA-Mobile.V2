import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hp_assistant/PredicitionModel.dart';


// class Readings {
//   final String heartRate  ;
//   final String spo2  ;
//   Readings(this.heartRate , this.spo2);
//
// }

String sv1 ;
String sv2 ;
var the_age;

PredictionModel prediction = PredictionModel() ;


class HealthRecord extends StatefulWidget {

  @override
  _HealthRecordState createState() => _HealthRecordState();
}

class _HealthRecordState extends State<HealthRecord> {
  // var _readingsJson = [ ];

  Future getSensorsData ()async {
    for (var i = 1; i < 38; i++) {
      final response = await http.get(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/sensor/"),
        headers: <String, String>{
          'Content-Type': "application/json; charset=UTF-8",
          "Vary": "Accept",

        },
      );

      final jsonData = jsonDecode(response.body);

      // List<String> readings = [];



    // setState(() {
      sv1 = jsonData[i]["HeartRate"];
      sv2 = jsonData[i]["SpO2"];
    // });

  }

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
              color: Theme.of(context).primaryColor,
              fontSize: 22,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ) ,
      // body: ListView.builder(itemCount : sv1.length,
      //     itemBuilder: (context,i){
      //   final read = sv1[i];
      //   return Text("${sv1[i]["HeartRate"].toString()}");

          // })
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                new Padding(padding: EdgeInsets.only(top:h*0.03)),

                new Text("Your Vital Readings",style: TextStyle(
                    color: Colors.teal,
                    fontSize: 22,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
                ),
                new Padding(padding: EdgeInsets.only(top:h*0.01)),

                ListTile(
                  title: Text ('Heart Rate :'),
                  subtitle:Text("${sv1}"),
                ),
                new Padding(padding: EdgeInsets.only(top:h*0.01)),

                ListTile(
                  title: Text ("Oxygen Level 'SpO2' :"),
                  subtitle:Text("${sv2} %"),
                ),
                new Padding(padding: EdgeInsets.only(top:h*0.03)),

                // new Text("Your Health Record",style: TextStyle(
                //     color: Colors.teal,
                //     fontSize: 22,
                //     fontFamily: 'Raleway',
                //     fontWeight: FontWeight.bold),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Age"),
                //   subtitle:Text("${the_age}"),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Chest Pain"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Resting Blood Pressure"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Cholesterol"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Fasting Blood Sugar Level"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Resting Electrocardiographic Results"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("thalach"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("exang"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Old Peak"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Slope"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("ca"),
                //   subtitle:Text(""),
                // ),
                // new Padding(padding: EdgeInsets.only(top:h*0.01)),
                //
                //
                // ListTile(
                //   title: Text ("Thallium Stress Result"),
                //   subtitle:Text(""),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

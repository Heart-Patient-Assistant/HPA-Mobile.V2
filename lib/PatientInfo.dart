
import 'package:flutter/material.dart';
import 'package:hp_assistant/databasehelpler.dart';

class PatientInfo extends StatefulWidget {
  PatientInfo({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PatientInfoState();
  }
}

class _PatientInfoState extends State<PatientInfo> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  final TextEditingController day = TextEditingController();
  final TextEditingController month = TextEditingController();
  final TextEditingController year = TextEditingController();
  final TextEditingController location = TextEditingController();
  Future<AddPatient> _futureAddPatient;

  String birthDate= '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Additional Information',
          style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body: new ListView(
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(top: 48)),
           Container(
             padding: EdgeInsets.only(left: 42),
             child: new Text(
               'Birth date:',
               style: TextStyle(
                   fontSize: 19.0,
                   fontFamily: 'Raleway'),
             ),

           ),
          new Padding(padding: EdgeInsets.only(top: 10)),

           Stack(
             children: [
             Container(
               padding: EdgeInsets.only(left: 42),

               child:   Container(
                 height: 60,
                 width: 50,
                 child: new TextField(
                   controller: day,
                   keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(9)),
                       labelText: 'Day',
                       hintText: '21'

                   ),
                 ),
               ),
             ),
               new Padding(padding: EdgeInsets.only(right: 200)),

          Container(
            padding: EdgeInsets.only(left: 150),
            child:      Container(
              height: 60,
              width: 67,
              child: new TextField(
                controller: month,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9)),
                    labelText: 'Month',
                    hintText: '07'),
              ),
            ),
          ),

               Container(
                 padding: EdgeInsets.only(left: 270),
                 child: Container(
                   height: 60,
                   width: 80,
                   child: new TextField(
                     controller: year,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(9)),
                         labelText: 'Year',
                         hintText: '1998'
                     ),
                   ),
                 ),
               )
             ],
           ),



          new Padding(
            padding: new EdgeInsets.only(top: 34.0),
          ),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: location,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Location',
                prefixIcon:
                new Icon(Icons.location_on_rounded, color: Colors.teal.shade600),
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 44.0),
          ),
          new Container(
            margin: EdgeInsets.only(left: 81, right: 81),
            height: 48,
            child: new RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: _finish,
              color: Colors.teal.shade600,
              child: new Text(
                'Finish',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Colors.white,

            ),
          )
        ],
      ),
    );
  }


  _finish() {
    setState(() {
      if (day.text.trim().isEmpty ||
          month.text.trim().isEmpty ||
          year.text.trim().isEmpty ||
          location.text.trim().isEmpty) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content:Text("Please input the required information ") ,
                title: Text(" Complete ",style: TextStyle(color: Colors.blue),),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: new Text(
                        "Ok",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              );
            });
      }else if(day.text.trim().isNotEmpty||
              month.text.trim().isNotEmpty ||
               year.text.trim().isNotEmpty ){
        setState(() {
          int day2 =int.parse(day.text.toString());
          int month2 =int.parse(month.text.toString());
          int year2 =int.parse(year.text.toString());
          birthDate=(year2.toString()+'-'+month2.toString()+'-'+day2.toString());
          setState(() {
            _futureAddPatient = databaseHelper.addPatientData(
                birthDate.trim(),
                location.text.trim());
          });
          Navigator.of(context).pushNamedAndRemoveUntil(
              '/Tips', (Route<dynamic> route) => false,
              arguments: {});
          return print(birthDate);

        });
      }


    });
  }
}

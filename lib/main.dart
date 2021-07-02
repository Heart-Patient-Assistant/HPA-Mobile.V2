import 'package:flutter/material.dart';
import 'package:hp_assistant/About.dart';
import 'package:hp_assistant/Blog.dart';
import 'package:hp_assistant/Contact.dart';
import 'package:hp_assistant/DocorInfo.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/EditDoctorProfile.dart';
import 'package:hp_assistant/EditPassword.dart';
import 'package:hp_assistant/EditPatientProfile.dart';
import 'package:hp_assistant/LoginPage.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:hp_assistant/PatientInfo.dart';
import 'package:hp_assistant/PatientProfile.dart';
import 'package:hp_assistant/PredicitionModel.dart';
import 'package:hp_assistant/RegisterPage.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Search.dart';
import 'package:hp_assistant/Services.dart';
import 'package:hp_assistant/Settings.dart';
import 'package:hp_assistant/TipsForThePatient.dart';
import 'package:hp_assistant/FB.dart';


void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String, WidgetBuilder>{
        '/LoginPage': (BuildContext context) => new LoginPage(),
        '/PatientProfile': (BuildContext context) => new PatientProfile(),
        '/PatientInfo': (BuildContext context) => new PatientInfo(),
        '/DoctorInfo': (BuildContext context) => new DoctorInfo(),
        '/RegisterPage': (BuildContext context) => new RegisterPage(),
        '/Menu': (BuildContext context) => new Menu(),
        '/HomePage': (BuildContext context) => new HomePage(),
        '/DoctorProfile': (BuildContext context) => new DoctorProfile(),
        '/Prediction': (BuildContext context) => new PredictionModel(),
        '/Tips': (BuildContext context) => new Tips(),
        '/Blog': (BuildContext context) => new Blog(),
        '/Services': (BuildContext context) => new Services(),
        '/About': (BuildContext context) => new About(),
        '/Contact': (BuildContext context) => new Contact(),
        '/Settings': (BuildContext context) => new Settings(),
        '/Search': (BuildContext context) => new Search(),
        '/EditPatientProfile': (BuildContext context) => new EditPatientProfile(),
        '/EditDoctorProfile': (BuildContext context) => new EditDoctorProfile(),
        '/EditPassword': (BuildContext context) => new EditPassword(),
        '/FB': (BuildContext context) => new FB(),








      },
      home: new LoginPage(),
    );
  }
}

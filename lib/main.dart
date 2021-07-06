import 'package:flutter/material.dart';
import 'package:hp_assistant/About.dart';
import 'package:hp_assistant/Activities/Activities.dart';
import 'package:hp_assistant/Blog.dart';
import 'package:hp_assistant/Contact.dart';
import 'package:hp_assistant/Diet/Breakfast/Breakfast.dart';
import 'package:hp_assistant/Diet/Breakfast/Meal1.dart';
import 'package:hp_assistant/Diet/Breakfast/Meal2.dart';
import 'package:hp_assistant/Diet/Breakfast/Meal3.dart';
import 'package:hp_assistant/Diet/Diet.dart';
import 'package:hp_assistant/Diet/Dinner/Dinner.dart';
import 'package:hp_assistant/Diet/Dinner/Meal7.dart';
import 'package:hp_assistant/Diet/Dinner/Meal8.dart';
import 'package:hp_assistant/Diet/Dinner/Meal9.dart';
import 'package:hp_assistant/Diet/Lunch/Lunch.dart';
import 'package:hp_assistant/Diet/Lunch/Meal4.dart';
import 'package:hp_assistant/Diet/Lunch/Meal5.dart';
import 'package:hp_assistant/Diet/Lunch/Meal6.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/EditPassword.dart';
import 'package:hp_assistant/EditProfile.dart';
import 'package:hp_assistant/LoginPage.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:hp_assistant/PatientProfile.dart';
import 'package:hp_assistant/PredicitionModel.dart';
import 'package:hp_assistant/RegisterPage.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Search.dart';
import 'package:hp_assistant/Services.dart';
import 'package:hp_assistant/Settings.dart';
import 'package:hp_assistant/TipsForThePatient.dart';
import 'package:hp_assistant/FB.dart';
import 'package:hp_assistant/newPost.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ValueNotifier<ThemeMode> _notifier = ValueNotifier(ThemeMode.light);
  @override
  Widget  build(BuildContext context) {


      return MaterialApp(
        routes: <String, WidgetBuilder>{
          '/LoginPage': (BuildContext context) => new LoginPage(),
          '/PatientProfile': (BuildContext context) => new PatientProfile(),
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
          '/EditPassword': (BuildContext context) => new EditPassword(),
          '/FB': (BuildContext context) => new FB(),
          '/Diet': (BuildContext context) => new Diet(),
          '/Activities': (BuildContext context) => new Activities(),
          '/Breakfast': (BuildContext context) => new Breakfast(),
          '/Dinner': (BuildContext context) => new Dinner(),
          '/Lunch': (BuildContext context) => new Lunch(),
          '/Meal1': (BuildContext context) => new Meal1(),
          '/Meal2': (BuildContext context) => new Meal2(),
          '/Meal3': (BuildContext context) => new Meal3(),
          '/Meal4': (BuildContext context) => new Meal4(),
          '/Meal5': (BuildContext context) => new Meal5(),
          '/Meal6': (BuildContext context) => new Meal6(),
          '/Meal7': (BuildContext context) => new Meal7(),
          '/Meal8': (BuildContext context) => new Meal8(),
          '/Meal9': (BuildContext context) => new Meal9(),
          '/newPost': (BuildContext context) => new newPost(),
          '/EditProfile': (BuildContext context) => new EditProfile(),


        },

        home: new LoginPage(),

      );

  }
}

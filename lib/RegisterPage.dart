import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/PatientProfile.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'TipsForThePatient.dart';



class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;
    if(value != '0'){
      if (this.typeUser.contains('DOCTOR') ){
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => DoctorProfile()),
          ModalRoute.withName('/DoctorProfile'),
        ); }
      else if( this.typeUser.contains('PATIENT')){
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => Tips()),
          ModalRoute.withName('/Tips'),
        );
      }
    }
  }
  DatabaseHelper databaseHelper = new DatabaseHelper();
  // String msgStatus = '';
  String typeUser = 'Please select your type';
  int _key;

  _collapse() {
    int newKey;
    do {
      _key = new Random().nextInt(10000);
    } while (newKey == _key);
  }

  @override
  void initState() {
    super.initState();
    _collapse();
  }

  final TextEditingController email = TextEditingController();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController repeatPassword = TextEditingController();
  final TextEditingController type = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Sign Up',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 22.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),

        backgroundColor: Colors.teal.shade600,
      ),
      body: new ListView(
              children: <Widget>[
                new Padding(padding: EdgeInsets.only(top: 32)),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 22),
                      child:
                      Container(
                        height: 80,
                        width: 170,
                        child: new TextField(
                          controller: firstName,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(67)),
                            labelText: 'First name',
                            prefixIcon:
                            new Icon(Icons.person, color: Colors.teal.shade600),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 200),
                      child:
                      Container(
                        height: 80,
                        width: 170,
                        child: new TextField(
                          controller: lastName,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(67)),
                            labelText: 'Last name',
                            prefixIcon:
                            new Icon(Icons.person, color: Colors.teal.shade600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  child: new TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(67)),
                      labelText: 'Email',
                      prefixIcon: new Icon(Icons.mail_rounded,
                          color: Colors.teal.shade600),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 34.0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  child: new TextField(
                    obscureText: true,
                    controller: password,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(67)),
                      labelText: 'Password',
                      prefixIcon: new Icon(Icons.vpn_key_rounded,
                          color: Colors.teal.shade600),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 34.0),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  child: new TextField(
                    obscureText: true,
                    controller: repeatPassword,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(67)),
                      labelText: 'Confirm password',
                      prefixIcon: new Icon(Icons.vpn_key_rounded,
                          color: Colors.teal.shade600),
                    ),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 34.0),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 73, right: 73),
                  child: ExpansionTile(
                    key: new Key(_key.toString()),
                    initiallyExpanded: false,
                    title: new Text(this.typeUser),
                    children: [
                      new ListTile(
                        title: const Text(
                          'DOCTOR',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          setState(() {
                            this.typeUser = 'DOCTOR';
                            _collapse();
                          });
                        },
                      ),
                      new ListTile(
                        title: const Text(
                          'PATIENT',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          setState(() {
                            this.typeUser = 'PATIENT';
                            _collapse();
                          });
                        },
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 48.0),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 73, right: 73),
                  height: 48,
                  child: new RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      if (firstName.text.trim().isEmpty ||
                          lastName.text.trim().isEmpty ||
                          email.text.trim().isEmpty ||
                          password.text.trim().isEmpty ||
                          repeatPassword.text.trim().isEmpty) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  " Complete ",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                content: Text(
                                    'Please input this required information'),
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
                      } else if (password.text.trim() !=
                          repeatPassword.text.trim()) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  "Attention",
                                  style: TextStyle(color: Colors.red),
                                ),
                                content: Text('Please check the password'),
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
                      }
                      else if (this.typeUser.contains('Please select your type')) {
                        return _showDialog();

                      }
                      else {
                        setState(() {
                          databaseHelper.registerData(
                              email.text.trim().toLowerCase(),
                              firstName.text.trim(),
                              lastName.text.trim(),
                              password.text.trim(),
                              repeatPassword.text.trim(),
                              this.typeUser.trim());
                        });

                        if (this.typeUser.contains('DOCTOR') ){
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => DoctorProfile()),
                            ModalRoute.withName('/DoctorProfile'),
                          ); }
                          else if( this.typeUser.contains('PATIENT')){
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Tips()),
                            ModalRoute.withName('/Tips'),
                          );
                        }


                      }
                    },
                    color: Colors.teal.shade600,
                    child: new Text(
                      'Sign up',
                      style: new TextStyle(
                        fontSize: 24,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            )

    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('Please',style: TextStyle(color: Colors.blue),),
            content: new Text('Check your type'),
            actions: <Widget>[
              new FlatButton(
                child: new Text(
                  'Ok',style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}

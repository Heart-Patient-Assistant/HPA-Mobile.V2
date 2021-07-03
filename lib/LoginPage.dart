import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/PatientProfile.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'DoctorProfile.dart';
import 'DoctorProfile.dart';
import 'PatientProfile.dart';
import 'PatientProfile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? "0";
    if (value != '0') {
      Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) => new HomePage(),
      ));
    }
  }

  @override
  initState() {
    read();
  }

  DatabaseHelper databaseHelper = new DatabaseHelper();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  Future<Login> _futureLogin;
  _register() {
    setState(() {
      Navigator.of(context).pushNamed('/RegisterPage');
    });
  }

  @override
  Widget build(BuildContext context) {
     double h = MediaQuery.of(context).size.height;
     double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: (_futureLogin == null)
          ? new ListView(
              children: [
                new Padding(padding: EdgeInsets.only(top: h * 0.05)),
                new Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: w * 0.1,
                    top: h * 0.0,
                    right: w * 0.1,
                  ),
                  child: Text(
                    "Heart Patient Assistant",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.teal.shade600,
                        fontSize: w * 0.07,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: h * 0.07)),
                new Container(
                  alignment: Alignment.center,
                  child: new Image.asset(
                    'img/heart.jpg',
                    height: h * 0.2,
                    width: w,
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: h * 0.08)),
                new Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                  child: new TextField(
                    controller: _emailController,
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
                new Padding(padding: EdgeInsets.only(top: h * 0.02)),
                new Container(
                  margin: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                  child: new TextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(67)),
                      labelText: 'Password',
                      prefixIcon: new Icon(Icons.vpn_key_rounded,
                          color: Colors.teal.shade600),
                    ),
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: h * 0.03)),
                new Container(
                  margin: EdgeInsets.only(left: w * 0.3, right: w * 0.3),
                  height:  h * 0.05,
                  child: new RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () async {
                      if (_emailController.text.trim().isEmpty ||
                          _passwordController.text.trim().isEmpty) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text(
                                  'Complete',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                content: Text(
                                    "Please input your email and password"),
                                actions: [
                                  FlatButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: new Text(
                                        'Ok',
                                        style: TextStyle(color: Colors.blue),
                                      ))
                                ],
                              );
                            });
                      } else {
                        String _type = await databaseHelper.loginData(
                            _emailController.text.trim().toLowerCase(),
                            _passwordController.text.trim());
                        if (_type == 'DOCTOR'){
                          Navigator.of(context).push(
                              new MaterialPageRoute(
                                builder: (BuildContext context) => new DoctorProfile(),
                              )
                          );
                        } else if (_type == 'PATIENT'){
                          Navigator.of(context).push(
                              new MaterialPageRoute(
                                builder: (BuildContext context) => new PatientProfile(),
                              )
                          );
                        } else if (_type == 'NOTFOUND'){
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: new Text(
                                    'ERROR',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  content: Text(
                                      "Unable to log in with provided credentials....Please check your data and try again."),
                                  actions: [
                                    FlatButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              new MaterialPageRoute(
                                                builder: (BuildContext context) => new LoginPage(),
                                              )
                                          );
                                        },
                                        child: new Text(
                                          'Ok',
                                          style: TextStyle(color: Colors.blue),
                                        ))
                                  ],
                                );
                              });

                        }

                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) =>
                        //           _type ? DoctorProfile() : PatientProfile()),
                        //   ModalRoute.withName(_type == false
                        //       ? '/PatientProfile'
                        //       : '/DoctorProfile'),
                        // );

                      }

                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: w * 0.07,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Colors.teal.shade600,
                    textColor: Colors.white,
                  ),
                ),
                new Padding(padding: EdgeInsets.only(top: h * 0.05)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Text(
                      "Don't have an account ?",
                      style: TextStyle(
                        fontSize: w * 0.04,
                        fontFamily: 'Raleway',
                      ),
                    ),
                    new FlatButton(
                        onPressed: _register,
                        child: new Text(
                          "Create account",
                          style: TextStyle(
                            fontSize: w * 0.04,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        )),
                  ],
                ),
              ],
            )
          : FutureBuilder<Login>(
              future: _futureLogin,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.email);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return new Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
    );
  }
}

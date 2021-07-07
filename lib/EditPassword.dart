import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:hp_assistant/PatientProfile.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditPassword extends StatefulWidget {
  EditPassword({Key key}) : super(key: key);
  @override
  _EditPasswordState createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  final TextEditingController oldPassword = new TextEditingController();
  final TextEditingController newPassword = new TextEditingController();
  final TextEditingController newPassword2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit password",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 22.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal.shade600,
        ),
        body: new ListView(
          children: [
            new Padding(padding: EdgeInsets.only(top: 73)),
            new Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 22, right: 22),
              child: new TextField(
                controller: oldPassword,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(67)),
                  labelText: 'Old password',
                  prefixIcon: new Icon(Icons.vpn_key_rounded,
                      color: Colors.teal.shade600),
                ),
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 25)),
            new Container(
              margin: EdgeInsets.only(left: 22, right: 22),
              child: new TextField(
                controller: newPassword,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(67)),
                  labelText: 'New password',
                  prefixIcon: new Icon(Icons.vpn_key_rounded,
                      color: Colors.teal.shade600),
                ),
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 25)),
            new Container(
              margin: EdgeInsets.only(left: 22, right: 22),
              child: new TextField(
                controller: newPassword2,
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(67)),
                  labelText: 'Confirm password',
                  prefixIcon: new Icon(Icons.vpn_key_rounded,
                      color: Colors.teal.shade600),
                ),
              ),
            ),
            new Padding(padding: EdgeInsets.only(top: 50.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    Navigator.of(context).pop(new MaterialPageRoute(
                      builder: (BuildContext context) => new Menu(),
                    ));
                  },
                  child: new Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Container(
                  padding: new EdgeInsets.only(left: 25),
                  child: new RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      if (oldPassword.text.trim().isEmpty ||
                          newPassword.text.trim().isEmpty ||
                          newPassword2.text.trim().isEmpty) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text(
                                  'Complete',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                content: Text("Please input your password"),
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
                        //setState(() {
                        //   _futureLogin = databaseHelper.loginData(
                        //       _emailController.text.trim().toLowerCase(),
                        //       _passwordController.text.trim());
                        // });

                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Menu()),
                          ModalRoute.withName('/Menu'),
                        );
                      }
                    },
                    color: Colors.teal.shade600,
                    child: new Text(
                      'Change',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textColor: Colors.white,
                  ),
                )
              ],
            )
          ],
        ));
  }
}

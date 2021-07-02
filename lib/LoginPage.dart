import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/PatientProfile.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;
    if(value != '0'){
      Navigator.of(context).push(
          new MaterialPageRoute(
            builder: (BuildContext context) => new HomePage(),
          )
      );
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: (_futureLogin == null)
          ?new ListView(
        children: [
          new Padding(padding: EdgeInsets.only(top: 13)),
          new Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
              left: 10.5,
            ),
            child: Text(
              "Heart Patient Assistant",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.teal.shade600,
                  fontSize: 30.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 100)),
          new Container(
            alignment: Alignment.center,
            child: new Image.asset(
              'img/heart.jpg',
              height: 150.0,
              width: 500.0,
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 50)),
          new Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(67)),
                labelText: 'Email',
                prefixIcon:
                    new Icon(Icons.mail_rounded, color: Colors.teal.shade600),
              ),
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 15)),
          new Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: _passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(67)),
                labelText: 'Password',
                prefixIcon: new Icon(Icons.vpn_key_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 30.0)),
          new Container(
            margin: EdgeInsets.only(left: 73, right: 73),
            height: 48,
            child: new RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {
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
                          content: Text("Please input your email and password"),
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
                } else if(type = false) {
                  setState(() {
                    _futureLogin = databaseHelper.loginData(
                        _emailController.text.trim().toLowerCase(),
                        _passwordController.text.trim());
                  });
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PatientProfile()),
                    ModalRoute.withName('/PatientProfile'),);
                  print('login : ${type}');
                }else if (type = true) {
                  setState(() {
                    _futureLogin = databaseHelper.loginData(
                        _emailController.text.trim().toLowerCase(),
                        _passwordController.text.trim());
                  });
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DoctorProfile()),
                    ModalRoute.withName('/DoctorProfile'),);
                  print('login : ${type}');
                }
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.teal.shade600,
              textColor: Colors.white,
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 148.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(
                "Don't have an account ?",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                ),
              ),
              new FlatButton(
                  onPressed: _register,
                  child: new Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  )),
            ],
          ),
        ],
      ) : FutureBuilder<Login>(
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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hp_assistant/Blog.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/EditDoctorProfile.dart';
import 'package:hp_assistant/EditPassword.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/LoginPage.dart';
import 'package:hp_assistant/TipsForThePatient.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int _key;


  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }


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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()),
                  ModalRoute.withName('/HomePage'),
                );
              },
              icon: Icon(
                Icons.home_rounded,
              ),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DoctorProfile()),
                  ModalRoute.withName('/DoctorProfile'),
                );
              },
              icon: Icon(
                Icons.account_circle_rounded,
              ),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Blog()),
                  ModalRoute.withName('/Blog'),
                );
              },
              icon: Icon(
                Icons.add_comment_rounded,
              ),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: null,
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.teal.shade600,
                size: 50,
              ),
            ),
            new Padding(padding: EdgeInsets.only(right: 25.0)),
          ],
          backgroundColor: Colors.white,
        ),
        body: new Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(
            top: 10.5,
            left: 22,
          ),
          child: new Column(
            children: [
              new FlatButton.icon(
                height: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/Search');
                },
                icon: Icon(Icons.search_rounded),
                label: Text(
                  'S e a r c h     ',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ),
              new FlatButton.icon(
                height: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/Services');
                },
                icon: Icon(Icons.medical_services_rounded),
                label: Text(
                  'S e r v i c e s',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ),
              new FlatButton.icon(
                height: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/About');
                },
                icon: Icon(Icons.contact_support_rounded),
                label: Text(
                  'A b o u t       ',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ),
              // new FlatButton.icon(
              //   height: 80,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30)),
              //   onPressed: () {
              //     Navigator.of(context).pushNamed('/Contact');
              //   },
              //   icon: Icon(Icons.send_rounded),
              //   label: Text(
              //     'C o n t a c t ',
              //     style: TextStyle(
              //         fontSize: 22,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),


              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 17.0,left: 115),
                    child:Icon(Icons.send_rounded),
                  ),
                  Container(
                     padding: EdgeInsets.only(left: 28),

                    margin: EdgeInsets.only(right: 55,left: 100),
                    child: ExpansionTile(
                      key: new Key(_key.toString()),
                      initiallyExpanded: false,
                      title: new Text('C o n t a c t ',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),),
                      children: [
                        new ListTile(
                          title: const Text(
                            'Contact with us',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/Contact');

                            _collapse();

                          },
                        ),
                        new ListTile(
                          title: const Text(
                            'Feedback',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/FB');

                            _collapse();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),





              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 28.0,left: 112.5),

                    child:Icon(Icons.settings_rounded),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 28,top: 10.0),

                    margin: EdgeInsets.only(right: 55,left: 100),
                    child: ExpansionTile(
                      key: new Key(_key.toString()),
                      initiallyExpanded: false,
                      title: new Text('S e t t i n g s',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),),
                      children: [
                        new ListTile(
                          title: const Text(
                            'Edit information',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/EditPatientProfile');

                            _collapse();

                          },
                        ),
                        new ListTile(
                          title: const Text(
                            'Edit password',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/EditPassword');

                            _collapse();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),



              // new FlatButton.icon(
              //   height: 80,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30)),
              //   onPressed: () {
              //     Navigator.of(context).pushNamed('/Settings');
              //   },
              //   icon: Icon(Icons.settings_rounded),
              //   label: Text(
              //     'S e t t i n g s',
              //     style: TextStyle(
              //         fontSize: 22,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),
              new FlatButton.icon(
                height: 70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: (){
                  _save('0');
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (BuildContext context) => new LoginPage(),
                      )
                  );
                },
                icon: Icon(Icons.logout),
                label: Text(
                  'L o g  o u t ',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}

// new ListTile(
// title: const Text(
// 'Services',
// style: TextStyle(fontSize: 20,
// fontFamily: 'Raleway', fontWeight: FontWeight.bold),
// ),
// //        onTap:
// ),
// new ListTile(
// title: const Text(
// 'About',
// style: TextStyle(fontSize: 20,
// fontFamily: 'Raleway', fontWeight: FontWeight.bold),
//
// ),
// //        onTap:
// ),
// new Padding(padding: EdgeInsets.only(right:50,top: 10.0)),
// new ListTile(
// title: const Text(
// 'Contact',
// style: TextStyle(fontSize: 20,
// fontFamily: 'Raleway', fontWeight: FontWeight.bold),
// ),
// //        onTap:
// ),
// new Padding(padding: EdgeInsets.only(right:50,top: 10.0)),
// new ListTile(
// title: const Text(
// 'Settings',
// style: TextStyle(fontSize: 20,
// fontFamily: 'Raleway', fontWeight: FontWeight.bold),
// ),
// //        onTap:
// ),
// new Padding(padding: EdgeInsets.only(right:50,top: 10.0)),
// new ListTile(
// title: const Text(
// 'Log out',
// style: TextStyle(fontSize: 20,
// fontFamily: 'Raleway', fontWeight: FontWeight.bold),
// ),
// //        onTap:
// ),

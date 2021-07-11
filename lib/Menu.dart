import 'package:flutter/material.dart';
import 'package:hp_assistant/Blog.dart';
import 'package:hp_assistant/PatientProfile.dart';
import 'package:hp_assistant/EditProfile.dart';
import 'package:hp_assistant/EditPassword.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/LoginPage.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _key;

  bool _type;

  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(

        appBar: AppBar(

          iconTheme: Theme.of(context).iconTheme,
          backgroundColor: Colors.teal.shade600,

          actions: [
            // FlatButton.icon(
            //   label: Text(''),
            //   onPressed: () {
            //     Navigator.pushAndRemoveUntil(
            //       context,
            //       MaterialPageRoute(
            //           builder: (BuildContext context) => HomePage()),
            //       ModalRoute.withName('/HomePage'),
            //     );
            //   },
            //   icon: Icon(
            //     Icons.home_rounded,
            //   ),
            // ),

            FlatButton.icon(
              label:
              Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PatientProfile()),
                  ModalRoute.withName('/PatientProfile'),
                );
              },

              icon:
              Icon(
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

              icon:
              Icon(
                Icons.add_comment_rounded,
              ),
            ),


            FlatButton.icon(
              label: Text(''),

              onPressed: null,
              icon:
              Icon(
                Icons.menu_rounded,
                size: 50,
              ),

            ),


            new Padding(padding: EdgeInsets.only(right: w * 0.15)),

          ],
        ),


        body:
        new ListView(
            children: [

          new Column(

            children: [
              new Padding(padding: EdgeInsets.only(top: h * 0.02)),
              new FlatButton.icon(
                height: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  // showSearch(context: context, delegate: Searchh(widget.list));
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SeerachBar(),
                  ));
                },

                icon:
                Icon(Icons.search_rounded),
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
                  'A b o u t  U s      ',
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
                  Navigator.of(context).pushNamed('/Contact');
                },

                icon: Icon(Icons.send_rounded),

                label: Text(
                  'C o n t a c t ',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold),
                ),
              ),

              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 28.0, left: 112.5),
                    child: Icon(
                      Icons.settings_rounded,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 28, top: 10.0),
                    margin: EdgeInsets.only(right: 55, left: 100),
                    child: ExpansionTile(
                      key: new Key(_key.toString()),
                      initiallyExpanded: false,
                      title: new Text(
                        'S e t t i n g s',
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),
                      ),
                      children: [
                        new ListTile(
                          title: const Text(
                            'Edit information',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/EditProfile');
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
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //
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

                onPressed: () {
                  _save('0');
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new LoginPage(),
                  ));
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
        ]));
  }
}

class SeerachBar extends StatefulWidget {
  @override
  _SeerachBarState createState() => _SeerachBarState();
}

class _SeerachBarState extends State<SeerachBar> {
  List data = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Column(

          children: [
            Row(
              children: [


                IconButton(
                  icon:
                  Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),


                Expanded(
                  child:
                  TextField(
                    onChanged: (String text) async {
                      print(text);
                      List d = await DatabaseHelper().searchh(text);
                      setState(() {
                        data = d;
                      });
                    },
                  ),
                ),
              ],
            ),


            if (data.isNotEmpty)
              Expanded(
                child:
                ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (_, i) {
                    return Text(data[i]['author']);
                  },
                ),
              )

          ],
        ),

      ),

    );

  }

}


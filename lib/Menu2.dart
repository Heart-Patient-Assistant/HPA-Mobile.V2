import 'package:flutter/material.dart';
import 'package:hp_assistant/Blog2.dart';
import 'package:hp_assistant/Home2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'DoctorProfile.dart';
import 'LoginPage.dart';

class Menu2 extends StatefulWidget {
  final List<String> list = List();
  @override
  _Menu2State createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
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
            //           builder: (BuildContext context) => Home2()),
            //       ModalRoute.withName('/Home2'),
            //     );
            //   },
            //   icon: Icon(
            //     Icons.home_rounded,
            //   ),
            // ),
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
                  MaterialPageRoute(builder: (BuildContext context) => Blog2()),
                  ModalRoute.withName('/Blog2'),
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
                size: 50,
              ),
            ),
            new Padding(padding: EdgeInsets.only(right: w * 0.15)),
          ],
        ),
        body: new ListView(children: [
          new Column(
            children: [
              new Padding(padding: EdgeInsets.only(top: h * 0.02)),
              new FlatButton.icon(
                height: 80,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  showSearch(context: context, delegate: Searchh(widget.list));
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
              // new FlatButton.icon(
              //   height: 80,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(30)),
              //   onPressed: () {
              //     Navigator.of(context).pushNamed('/Services');
              //   },
              //   icon: Icon(Icons.medical_services_rounded),
              //   label: Text(
              //     'S e r v i c e s',
              //     style: TextStyle(
              //         fontSize: 22,
              //         fontFamily: 'Raleway',
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),
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
                    child: Icon(Icons.settings_rounded,color: Colors.black87,),
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

class Searchh extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  String selectedResult;
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  final List<String> listExample;
  Searchh(this.listExample);
  List<String> recentList = ["", ""];
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList
        : suggestionList.addAll(listExample.where(
            (element) => element.contains(query),
          ));

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          onTap: () {
            selectedResult = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}

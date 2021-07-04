import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';

import 'PatientProfile.dart';
import 'databasehelpler.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return new Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade600,
        onPressed: () {
          Navigator.of(context).pushNamed('/newPost');
        },
        child: Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 40,
        ),
      ),
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
                    builder: (BuildContext context) => PatientProfile()),
                ModalRoute.withName('/PatientProfile'),
              );
            },
            icon: Icon(
              Icons.account_circle_rounded,
            ),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed: null,
            icon: Icon(
              Icons.add_comment_rounded,
              color: Colors.teal.shade600,
              size: 50,
            ),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Menu()),
                ModalRoute.withName('/Menu'),
              );
            },
            icon: Icon(
              Icons.menu_rounded,
            ),
          ),
          new Padding(padding: EdgeInsets.only(right: 15.0)),
        ],
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: databaseHelper.getPostData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          List data = snapshot.data;
          print(data.length);
          return new ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int newPosition) {
                return new ListTile(
                    title: new Text(
                      '${data[newPosition]['title']}',
                      style: TextStyle(
                        color: Colors.teal.shade600,
                        fontSize: 22.0,
                      ),
                    ),
                    subtitle: new Text(
                      '${data[newPosition]['body']}',
                      style: TextStyle(
                        color: Colors.teal.shade600,
                        fontSize: 14.0,
                      ),
                    ),
                    trailing: new RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: new Text(
                                  'Leave Comment',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                content: TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 5,
                                  controller: _textController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    labelText: 'Please Write Your Comment',
                                    hintMaxLines: 100,
                                  ),
                                ),
                                actions: [
                                  FlatButton(
                                      onPressed: () {
                                        //Navigator.pop(context);
                                        if (_textController.text.trim().isEmpty) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {return AlertDialog(
                                                  title: new Text('Please Insert Your comment',
                                                    style: TextStyle(color: Colors.teal.shade600),
                                                  ),
                                                  actions: [FlatButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                        child: new Text(
                                                          'Ok',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.blue),
                                                        ))
                                                  ],
                                                );
                                              });
                                        } else {
                                          print(_textController);
                                          setState(() {
                                            databaseHelper.createCommentData(
                                                data[newPosition]['id']);
                                            Navigator.pop(context);
                                          });
                                        }
                                      },
                                      child: new Text(
                                        'Done',
                                        style: TextStyle(color: Colors.blue),
                                      ))
                                ],
                              );
                            });
                      },
                      child: Text(
                        "comment",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.teal.shade500,
                      textColor: Colors.white,
                    ),
                    leading: new CircleAvatar(
                      child: new Text('P ${data[newPosition]['id']}'),
                      backgroundColor: Colors.teal.shade600,
                      foregroundColor: Colors.white,
                    ),
                    onTap: () async {
                      Map map = await DatabaseHelper()
                          .getDPostData(data[newPosition]['id']);
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: new Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                              content: Column(
                                textDirection: TextDirection.ltr,
                                children: [
                                  Text(
                                    "ID: ${map['id']}",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.teal.shade600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    "Author: ${map['author']}",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.teal.shade600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    "title: ${map['author']}",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.teal.shade600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    "post_date: ${map['author']}",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.teal.shade600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    "body: ${map['author']}",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.teal.shade600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ],
                              ),
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
                    });
              }

              );
        },
      ),

    );
  }
}


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

      appBar: AppBar( actions: [

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

        new Padding(padding: EdgeInsets.only(right: w*0.15)),

        ],

        backgroundColor: Colors.white,
      ),


      body:

      FutureBuilder(
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
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),

                    subtitle: new Text(
                      '${data[newPosition]['body']}',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 14.0,
                      ),
                    ),

                    trailing: new RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
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
                                        if (_textController.text.trim().isEmpty) {
                                          showDialog(
                                              context: context,
                                              builder: (context) {return AlertDialog(
                                                  title: new Text('Please Insert Your comment',
                                                    style: TextStyle(color: Colors.red.shade700),
                                                  ),
                                                  actions: [FlatButton(
                                                        onPressed: () {
                                                          Navigator.pop(context);
                                                        },
                                                        child: new Text('Ok',
                                                          style: TextStyle(color: Colors.teal.shade600),)
                                                  )
                                                  ],
                                                );
                                              });
                                        } else {
                                          print(_textController);
                                          setState(() {
                                            databaseHelper.createCommentData(data[newPosition]['id']);
                                            _textController.clear();
                                            Navigator.pop(context);
                                          });
                                        }
                                      },

                                      child: new Text('Done', style: TextStyle(color: Colors.blue),),

                                  )

                                ],);
                            });
                      },

                      child: Text("comment",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.blue.shade700,
                      textColor: Colors.white,
                    ),

                    leading: new CircleAvatar(
                      child: new Text('P ${data[newPosition]['id']}'),
                      backgroundColor: Colors.pink.shade400,
                      foregroundColor: Colors.white,
                    ),

                    onTap: () async {
                      Map map = await DatabaseHelper().getDPostData(data[newPosition]['id']);
                      print(map);
                      List comment = await databaseHelper.getCommentData(data[newPosition]['id']);

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: new Text('Details & Comments',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20.0,),),
                              content:Row(
                                children:[  new Column(
                                  textDirection: TextDirection.ltr,
                                  mainAxisSize: MainAxisSize.min,
                                   children:[
                                    Text("ID: ${map['id']}",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.teal.shade600,
                                        fontSize: 17.0,
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

                                     new Padding(padding: EdgeInsets.all( 10.0)),

                                     Text(
                                       "All Comments:",
                                       textAlign: TextAlign.left,
                                       style: TextStyle(
                                         color: Colors.blue.shade600,
                                         fontSize: 20.0,
                                       ),
                                     ),

                                for(var x = 0; x < comment.length; x++ )
                                  Card(child: (
                                      Text("${comment[x]['body']} By :${comment[x]['author']} ",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.teal.shade600,
                                          fontSize: 17.0,
                                        ),
                                      )

                                  ),
                                  ),


                                         ]
                                  ),
                                 ],
                                ),


                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      print(comment[0]['body']);
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



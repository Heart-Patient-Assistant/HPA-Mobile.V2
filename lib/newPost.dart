import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:shared_preferences/shared_preferences.dart';



class newPost extends StatefulWidget {
  newPost({Key key}) : super(key: key);

  @override
  _newPostState createState() => _newPostState();
}

class _newPostState extends State<newPost> {



  DatabaseHelper databaseHelper = new DatabaseHelper();


  final TextEditingController _titleController = new TextEditingController();
  final TextEditingController _bodyController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Post',
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ) ,

      body: new ListView(
        children: [
          new Padding(padding: EdgeInsets.only(top: h * 0.03,right: 20, left: 20)),
          new Text('Title',
            style: TextStyle(
                fontSize: w * 0.07,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade600
            ),
          ),

          new Padding(padding: EdgeInsets.only(top: h * 0.01,right: 20, left: 20)),

          new TextField(
        keyboardType: TextInputType.multiline,
        maxLines: 1,
        controller: _titleController,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(67)),
          hintMaxLines:100,
        ),
      ),
          new Padding(padding: EdgeInsets.only(top: h * 0.03,right: 20, left: 20)),

          new Text('Body',
            style: TextStyle(
                fontSize: w * 0.07,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade600
            ),
          ),

          new Padding(padding: EdgeInsets.only(top: h * 0.01,right: 20, left: 20)),

          new TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            controller: _bodyController,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              hintMaxLines:100,
            ),
          ),

          new Row(children: [
            new Padding(padding: EdgeInsets.only(top: h * 0.1, right: w * 0.2, left: w * 0.2)),

        new RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed:() { if (_titleController.text.trim().isEmpty ||_bodyController.text.trim().isEmpty ) {
            showDialog(context: context,builder: (context) {
              return
                new AlertDialog(
                  title: Text(" Complete ", style: TextStyle(color: Colors.teal.shade600),),
                  content: Text('Please complete the post'),
                  actions: [
                    FlatButton(onPressed: () {Navigator.pop(context);},
                        child: new Text("Ok",style: TextStyle(color: Colors.teal.shade600),))
                  ],);
            });
          } else {
            print(_titleController);
            print(_bodyController);
            setState(() {

              databaseHelper.newPostData(_titleController.text.trim(),_bodyController.text.trim());
            });


            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: new Text('Done', style: TextStyle(color: Colors.teal.shade600),),
                    content: Text("post will sent"),
                    actions: [
                      FlatButton(
                          onPressed: () {Navigator.pop(context);},
                          child: new Text('Ok', style: TextStyle(color: Colors.teal.shade600),))
                    ],);});

          }},
          child: Text("Post",
            style: TextStyle(fontSize: 24,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
          color: Colors.teal.shade600,
          textColor: Colors.white,
        ),


          ],)
      ],),



    );
  }
}

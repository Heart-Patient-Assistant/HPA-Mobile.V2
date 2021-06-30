import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
            icon: Icon(Icons.home_rounded, ),
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
            icon: Icon(Icons.account_circle_rounded,),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed:null,
            icon: Icon(Icons.add_comment_rounded, color: Colors.teal.shade600,size: 50,),
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
            icon: Icon(Icons.menu_rounded,),
          ),
          new Padding(padding: EdgeInsets.only(right: 15.0)),
        ],
        backgroundColor: Colors.white ,
      ),
    body: new Column(
      children: [
        new Container(
          child: Text(
            'The Blog ',
            style: TextStyle(
                fontSize: 22,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
          ),
        ),
        new Container(alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(top:617, right:19),
          child:new FloatingActionButton(onPressed: null,
            child: Icon(Icons.add_rounded,color: Colors.white,size: 40,),
            backgroundColor: Colors.teal.shade600,)
          ,
        )
      ],
    )
    );
  }
}
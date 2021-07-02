import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:contactus/contactus.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class Contact extends StatefulWidget {
  Contact({Key key}) : super(key: key);
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  void _onItemTapped(int index) {
    setState(() {
      Navigator.of(context).pushNamed('/FB');
    });
  }



  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: AppBar(
        title: Text(
          'Contact Page',
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ) ,

      body:
      new  ListView(children: [
        new Padding(padding: EdgeInsets.all(15.0)),
          ContactUs(
            logo: AssetImage('img/heart.jpg'),
            email: 'adoshi26.ad@gmail.com',
            companyName: 'HPA',
            companyColor: Colors.teal.shade100,
            phoneNumber: '',
            website: 'http://mahdy.pythonanywhere.com/',
            githubUserName: 'https://github.com/Heart-Patient-Assistant/HPA-Web/tree/codeTest',
            linkedinURL: '',
            twitterHandle: '',
             instagram: '',
             facebookHandle: '',
          ),

        new  Column(children: [
          new Padding(padding: EdgeInsets.all(15.0)),
          new RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  Navigator.of(context).pushNamed('/FB');
                },
                child: Text(
                  "Feedback",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.teal.shade600,
                textColor: Colors.white,
              ),
          new Padding(padding: EdgeInsets.all(15.0)),



        ],),

      ],),


    );
  }
}
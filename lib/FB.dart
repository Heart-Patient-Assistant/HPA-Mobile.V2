import 'dart:ui';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'HomePage.dart';

class FB extends StatefulWidget {
  FB({Key key}) : super(key: key);
  @override
  _FBState createState() => _FBState();
}

class _FBState extends State<FB> {




  DatabaseHelper databaseHelper = new DatabaseHelper();
  String rate;
  int radioGroup = 0;
  String feedback_category;

  Future<FB> _futureFB;
  final TextEditingController _textController = new TextEditingController();

  void radioEventHandler(int value) {
    setState(() {
      radioGroup = value;
      if (radioGroup ==1){feedback_category = "suggest";}
      else if (radioGroup ==2){feedback_category = "complain";}
      else{feedback_category = "complement";}
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedback Page',
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ) ,

       body:  new Column(
           children: [

             new Padding(padding: EdgeInsets.only(top: 20.0)),

             new Text('My Feedback',
               style: TextStyle(
                   fontSize: 22,
                   fontFamily: 'Raleway',
                   fontWeight: FontWeight.bold,
                   color: Colors.teal.shade600
                   ),
             ),

             new Padding(padding: EdgeInsets.only(top: 20.0)),
             new Row(
               children: [

                 new Container(
                   alignment: Alignment.topLeft,
                   child: new Text('Rating:   ',
                     textAlign: TextAlign.left,
                     style: TextStyle(
                       fontSize: 25,
                       fontFamily: 'Raleway',
                       fontWeight: FontWeight.bold,
                       color: Colors.teal.shade600,
                     ),
                   ),),

                 new Container(
                   child: new RatingBar.builder(
                     initialRating: 0,
                     minRating: 0,
                     direction: Axis.horizontal,
                     allowHalfRating: false,
                     itemCount: 5,
                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                     itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                     onRatingUpdate: (rating) {
                       print(rating);
                       if (rating ==1.0){rate="verybad";}
                       else if (rating == 2.0){rate ="notbad";}
                       else if (rating == 3.0){rate ="good";}
                       else if (rating == 4.0){rate ="verygood";}
                       else if (rating == 0.0){rate ="null";}
                       else{rate = "excellent";}
                       print(rate);
                       },
                   ) ,
                 ),
               ],
             ),

             new Padding(padding: EdgeInsets.only(top: 19.0)),

             new TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                    labelText: 'Please Write Your Comment',
                    hintMaxLines:100,
                         ),
                 ),

             new Padding(padding: EdgeInsets.only(top: 20.0)),

             new Container(
               alignment: Alignment.topLeft,
               child: new Text('Choose Category',
                 textAlign: TextAlign.left,
                 style: TextStyle(
                   fontSize: 22,
                   fontFamily: 'Raleway',
                   fontWeight: FontWeight.bold,
                   color: Colors.teal.shade600,
                 ),
               ),),

             new Row(
               children: [
                 new Radio(
                   value: 1,
                   groupValue: radioGroup,
                   onChanged: radioEventHandler,
                 ),
                 new Text("suggest"),
                 new Padding(padding: EdgeInsets.only(right:15.0)),
                 new Radio(
                   value: 2,
                   groupValue: radioGroup,
                   onChanged: radioEventHandler,
                 ),
                 new Text("complain"),
                 new Padding(padding: EdgeInsets.only(right:15.0)),
                 new Radio(
                   value: 3,
                   groupValue: radioGroup,
                   onChanged: radioEventHandler,
                 ),
                 new Text("complement"),
               ],
             ),

             new Padding(padding: EdgeInsets.only(top: 10.0)),

             new RaisedButton(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
               onPressed: () {
                 if (_textController.text.trim().isEmpty && rate == 0.0 && radioGroup ==0 ){
                   showDialog(
                       context: context,
                       builder: (context) {
                         return AlertDialog(
                           title: new Text('Complete The Feedback', style: TextStyle(color: Colors.teal.shade600),),
                           content: Text("Please Insert your Feedback "),
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
                 } else if (_textController.text.trim().isEmpty  ) {
                   showDialog(
                       context: context,
                       builder: (context) {
                         return AlertDialog(
                           title: new Text('Complete The Feedback', style: TextStyle(color: Colors.teal.shade600),),
                           content: Text("Please Write Your Comment "),
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
                 } else if (rate == "null" ){
                   showDialog(
                       context: context,
                       builder: (context) {
                         return AlertDialog(
                           title: new Text('Complete The Feedback', style: TextStyle(color: Colors.teal.shade600),),
                           content: Text("Please Choose Your Rating "),
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
                 }else if (radioGroup ==0){
                   showDialog(
                       context: context,
                       builder: (context) {
                         return AlertDialog(
                           title: new Text('Complete The Feedback', style: TextStyle(color: Colors.teal.shade600),),
                           content: Text("Please Choose Category "),
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
                   showDialog(
                       context: context,
                       builder: (context) {
                         return AlertDialog(
                           title: new Text('thank you', style: TextStyle(color: Colors.blue),),
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
                   setState(() {
                     _futureFB = databaseHelper.FBData(rate.trim(),_textController.text.trim(),feedback_category.trim()) ;
                   });

                   Navigator.pushAndRemoveUntil(
                     context,
                     MaterialPageRoute(
                         builder: (BuildContext context) => HomePage()),
                     ModalRoute.withName('/HomePage'),
                   );
                 }
               },
               child: Text(
                 "Send",
                 style: TextStyle(
                   fontSize: 24,
                   fontFamily: 'Raleway',
                   fontWeight: FontWeight.bold,
                 ),
               ),
               color: Colors.teal.shade600,
               textColor: Colors.white,
             ),





  ]
      ));

  }


  }

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'databasehelpler.dart';

class FB extends StatefulWidget {
  FB({Key key}) : super(key: key);
  @override
  _FBState createState() => _FBState();
}

class _FBState extends State<FB> {

  DatabaseHelper databaseHelper = new DatabaseHelper();
  String rate='';
  int radioGroup = 0;
  String feedbackCategory='';

  final TextEditingController _textController = new TextEditingController();

  void radioEventHandler(int value) {
    setState(() {
      radioGroup = value;
      if (radioGroup ==1){
        setState(() {
          this.feedbackCategory = 'suggest';
          print(this.feedbackCategory);
        });}
      else if (radioGroup ==2){
        setState(() {
          this.feedbackCategory = 'complain';
          print(this.feedbackCategory);

        });}
      else if (radioGroup ==3){
        setState(() {
          this.feedbackCategory = 'complement';
          print(this.feedbackCategory);

        });}
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            'Contact Page',
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 22,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.teal.shade600,
        ) ,
        body: ListView ( children:[ Center(
          child: new Column(
              children: [
                new Padding(padding: EdgeInsets.all( 20.0)),
                new Text('My Feedback',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade600
                  ),
                ),

                new Padding(padding: EdgeInsets.all( 20.0)),
                new Row(
                  children: [
                    new Padding(padding: EdgeInsets.all( 10.0)),
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
                      ),
                    ),
                    new Padding(padding: EdgeInsets.all( 20.0)),


                    new Container(
                      child: new RatingBar.builder(
                        initialRating: 0.0,
                        minRating: 0.0,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber,),
                        onRatingUpdate: (rating) {
                          if (rating ==1.0){
                            setState(() {
                              this.rate='verybad';
                              print(this.rate);
                            });
                          } else if (rating == 2.0){
                            setState(() {
                              this.rate='notbad';
                              print(this.rate);
                            });
                          } else if (rating == 3.0){
                            setState(() {
                              this.rate='good';
                              print(this.rate);
                            });
                          } else if (rating == 4.0){
                            setState(() {
                              this.rate ='verygood';
                              print(this.rate);
                            });
                            return this.rate ='excellent';
                          } else if (rating == 5.0){
                            setState(() {
                              this.rate='excellent';
                              print(this.rate);
                            });
                          }},
                      ) ,
                    ),
                  ],),

                new Padding(padding: EdgeInsets.all( 20.0)),

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

                new Padding(padding: EdgeInsets.all( 20.0)),

                new Container(

                  alignment: Alignment.center,
                  child: new Text('Choose Category',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade600,
                    ),
                  ),),
                new Padding(padding: EdgeInsets.all( 20.0)),

                new Row(
                  children: [
                    new Padding(padding: EdgeInsets.all(5.0)),

                    new Radio(
                      value: 1,
                      groupValue: radioGroup,
                      onChanged: radioEventHandler,
                    ),
                    new Text("suggest"),
                    new Padding(padding: EdgeInsets.all(10.0)),
                    new Radio(
                      value: 2,
                      groupValue: radioGroup,
                      onChanged: radioEventHandler,
                    ),
                    new Text("complain"),
                    new Padding(padding: EdgeInsets.all(10.0)),
                    new Radio(
                      value: 3,
                      groupValue: radioGroup,
                      onChanged: radioEventHandler,
                    ),
                    new Text("complement"),
                    new Padding(padding: EdgeInsets.all(10.0)),

                  ],),

                new Padding(padding: EdgeInsets.all( 30.0)),

                new RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  onPressed: () {
                    if (_textController.text.trim().isEmpty || rate==''|| radioGroup ==0 ){
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: new Text('Complete The Feedback', style: TextStyle(color: Colors.teal.shade600),),
                              content: Text("Please Insert your Feedback "),
                              actions: [
                                FlatButton(
                                    onPressed: () {Navigator.pop(context);},
                                    child: new Text('Ok', style: TextStyle(color: Colors.blue),)
                                )
                              ],);});
                    }else {
                      print(_textController);
                      setState(() {
                        databaseHelper.FbData(
                            this.rate.trim(), this.feedbackCategory.trim(), _textController.text.trim());
                      });

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: new Text('thank you', style: TextStyle(color: Colors.blue),),
                              content: Text("We received your Feedback "),
                              actions: [
                                FlatButton(
                                    onPressed: () {Navigator.pop(context);},
                                    child: new Text('Ok', style: TextStyle(color: Colors.blue),))
                              ],);});
                    }},
                  child:
                  Text("Send",
                    style: TextStyle(fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.teal.shade600,
                  textColor: Colors.white,
                ),
                new Padding(padding: EdgeInsets.all( 20.0)),



              ]),
        )
        ]),
    );
  }
}
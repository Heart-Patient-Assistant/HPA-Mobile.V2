import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: TextStyle(
              fontSize: 22,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ) ,
      body: new Container(
        alignment: Alignment.center,
        child: new Center(
          child: new ListView(
            children: [
              new Padding(padding: EdgeInsets.only(top: h*0.03)),
              new Image.asset(
                'img/heart.jpg',
                height: 250.0,
                width: 500.0,
              ),
              new Padding(padding: EdgeInsets.only(top: h*0.03)),
              new Container(
                child: Column(
                  children: [
                    new Container(
                      child: new Column(
                        children: [
                          new Text("' Why we started it : '",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 30,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),

                          ),

                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: w*0.015),
                      child: new Column(
                        children: [
                          new Padding(padding: EdgeInsets.only(top: h*0.02)),
                          new Text("• As we can see from the application's name it's an assistant for any heart patient , we wanted to help these patients by providing them with a reliable health care but in simple and easy way for them .",style: TextStyle(
                              fontSize: 13.5,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),

                    new Container(
                      child: new Column(
                        children: [
                          new Text("' Our Users : '",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 30,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),

                          ),

                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: w*0.015),
                      child: new Column(
                        children: [
                          new Padding(padding: EdgeInsets.only(top: h*0.02)),
                          new Text("• The users can be patients or doctors to help us providing this reliable health care to our patients in a better way.",style: TextStyle(
                              fontSize: 13.5,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),

                    new Container(
                      child: new Column(
                        children: [
                          new Text("' Our Services : '",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 30,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),

                          ),

                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: w*0.015),
                      child: new Column(
                        children: [
                          new Padding(padding: EdgeInsets.only(top: h*0.02)),
                          new Text("• We help you to live a healthy life by providing you with a healthy diet meals and guide you with best activities and workouts to do to boost your health.",style: TextStyle(
                              fontSize: 13.5,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: w*0.015),
                      child: new Column(
                        children: [
                          new Padding(padding: EdgeInsets.only(top: h*0.02)),
                          new Text("• We also provide you with a prediction feature in which our model can predict whether you're at risk of having any heart problem in the next 10 years or not.",style: TextStyle(
                              fontSize: 13.5,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: w*0.015),
                      child: new Column(
                        children: [
                          new Padding(padding: EdgeInsets.only(top: h*0.02)),
                          new Text("• We also recommend for you to buy our product which is a smart watch works on tracking your vital readings so we can provide you with a health record for you.",style: TextStyle(
                              fontSize: 13.5,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),


            ],
          ),
        ),

      ),

    );
  }
}
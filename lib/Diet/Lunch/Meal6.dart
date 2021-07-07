import 'package:flutter/material.dart';

class Meal6 extends StatefulWidget {

  @override
  _Meal6State createState() => _Meal6State();
}

class _Meal6State extends State<Meal6> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Meal-3",style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body: new Container(
        alignment: Alignment.center,
        child: Center(
          child: ListView(
            children: [
              new Padding(padding: EdgeInsets.only(top: h*0.03)),
              new Image.asset(
                'img/meal5.png',
                height: 300.0,
                width: 600.0,
              ),
              new Padding(padding: EdgeInsets.only(top: h*0.03)),
              new Container(
                child: Column(
                  children: [
                    new Container(
                      child: new Column(
                        children: [
                          new Text("' Lentils With Herbs,Veggies '",
                            style: TextStyle(
                                color: Colors.teal,
                                fontSize: 30,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),

                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),


              new Padding(padding: EdgeInsets.only(top: h*0.03)),
              new Container(
                child: new Column(
                  children: [
                    new Text("INGREDIENTS",style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.01)),

                    new Text(" • 2 cups cooked dark lentils",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1 medium aubergine",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2 medium carrot",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2 medium tomatoes",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" 1 large white sweet onion",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2 garlic cloves, minced",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2tbs olive oil",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • few springs of thyme",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • sea salt, pepper",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • loosely packed cup of mixed chopped herbs ",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • juice of 1 lemon",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • Hummus to serve",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                  ],
                ),
              ),


              new Padding(padding: EdgeInsets.only(top: h*0.03)),

              new Container(
                child: new Column(
                  children: [
                    new Text("Method",style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),


              new Padding(padding: EdgeInsets.only(top: h*0.01)),

              new Container(
                padding: EdgeInsets.only(left: w*0.1,right: w*0.1),
                child: Column(
                  children: [
                    new Text("1- Preheat the oven to 180C then Cut the aubergine, carrots and onions and tomatoes into cubes.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text("2- Put them into a large bowl, add minced garlic, thyme, sea salt, pepper and a spoon of olive oil and Mix well and spread it on a baking sheet.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text("3- Bake it for 20-30 minutes until slightly browned on the edges and the carrots are soft.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text("4- In a large bowl mix the cooked lentils with grilled vegetables, add the herbs and the remaining olive oil.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text("5- Season to taste with salt and pepper add a squeeze of lemon if you like.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("6- Serve it with Hummus or tahini and warm bread",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                  ],
                ),
              ),

              new Padding(padding: EdgeInsets.only(top: h*0.007)),



            ],
          ),
        ),
      ),
    );
  }
}

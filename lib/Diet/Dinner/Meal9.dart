import 'package:flutter/material.dart';
class Meal9 extends StatefulWidget {

  @override
  _Meal9State createState() => _Meal9State();
}

class _Meal9State extends State<Meal9> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Meal-3",style: TextStyle(
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
                'img/meal9.png',
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
                          new Text("' Spinach with Mushrooms '",
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

                    new Text(" • 1tbs olive oil",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1 large onion",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2 garlic cloves",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1/2tsp turmeric",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1/2tsp cumin",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1/2tsp ground coriander",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 200g mushrooms sliced",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 500g fresh spinach",style: TextStyle(
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
                    new Text(" • 1/2cup coconut milk",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1tbs Cashew Cream",style: TextStyle(
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
                    new Text("1-Heat the oil in a saucepan, sauté the onions and garlic.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("2-Add the spices and sauté until fragrant.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("3-Add the mushrooms and sauté for 5 minutes.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("4-Add the spinach and let it wilt, then add coconut milk and cream and season with salt and pepper to taste.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("5-Simmer for few minutes and turn off the heat.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("6-Serve it with rice or lentils",style: TextStyle(
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

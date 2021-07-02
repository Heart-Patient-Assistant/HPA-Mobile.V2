import 'package:flutter/material.dart';
class Meal8 extends StatefulWidget {

  @override
  _Meal8State createState() => _Meal8State();
}

class _Meal8State extends State<Meal8> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Meal-2",style: TextStyle(
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
                'img/meal3.png',
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
                          new Text("' Sweet Potato with Curry '",
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

                    new Text(" • 1 large sweet potato",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 400g can chickpeas",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1 large white sweet onion",style: TextStyle(
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

                    new Text(" • 2 garlic cloves",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • thumb size piece of ginger",style: TextStyle(
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
                    new Text(" • 1/4tsp turmeric",style: TextStyle(
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
                    new Text(" • 1/2tsp cinnamon",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1/2tsp curry powder",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1/2 coconut milk",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • coriander leaves",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • brown rice to serve",style: TextStyle(
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
                    new Text("1- Chop the garlic and ginger finely then dice the onion.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("2- Peel the sweet potato and cut it into 2x2cm cubes and Cut the tomatoes into 1x1cm cubes.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("3- Drain and rinse the chickpeas under running cold water and Heat the oil in a heavy bottom deep pan.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("4- Add the onions and sauté for few minutes until slightly golden then Add the garlic, ginger and spices and sauté until fragrant",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("5- Put the sweet potatoes in the pan add water, enough to cover all the potatoes then Season with salt and pepper.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("6- Bring it to a boil and let it cook for 10-15 minutes",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("7- Add the chickpeas, tomatoes and let it cook uncovered for 5-10 minutes",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("8- Once the potatoes are cooked through and starting to break slightly, add the coconut milk and adjust the seasoning.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("9- Bring it to a boil, add coriander and turn off the heat.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("10- Serve immediately with warm brown rice.",style: TextStyle(
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

import 'package:flutter/material.dart';

class Meal4 extends StatefulWidget {

  @override
  _Meal4State createState() => _Meal4State();
}

class _Meal4State extends State<Meal4> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Meal-1",style: TextStyle(
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
                'img/meal6.png',
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
                          new Text("'Vegan Spaghetti Bolognese'",
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

                    new Text(" • 300g block of very firm tofu",style: TextStyle(
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

                    new Text(" • 200g mushroom",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 3 cloves of garlic",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2 cans of chopped tomatoes (or 5, 6 medium fresh tomatoes)",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1tbs tomato paste",style: TextStyle(
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
                    new Text(" • 1tbs molasses",style: TextStyle(
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
                    new Text(" • 1tbsp soy sauce",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1tsp cinnamon",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1/2tsp nutmeg",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1tsp oregano",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • handfull of basil leaves",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1tbs nutritional yeast (optional)",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • half the pack of whole-wheat spaghetti 250g",style: TextStyle(
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
                    new Text(" 1- Mash the tofu with potato masher, set aside then In a food processor pulse the carrot chunks into a grainy consistency, the pieces should be the size of rice grains.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" 2- Set that aside and do the same with mushrooms, careful not to over process it into a mash.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text("3- Chop up or grate garlic on microplane then Heat up olive oil in a saucepan, throw in the mushrooms and carrots. ",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text("4- Sauté it for a couple of minutes then add garlic, spices, salt and pepper and Sauté until fragrant then add tofu. ",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text("5- Now add soy sauce, tomato paste and molasses, mix well and sauté for few more minutes ",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("6- Add canned or fresh chopped tomatoes, season it with salt and pepper and let it cook for 10, 15 minutes adjusting the consistency. ",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("7- Add a little water if it’s too thick or let it reduce down if it’s too watery. ",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("8- In the meantime cook spaghetti according to the instructions on the package. I love all my pasta aldente.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("9- Once the sauce is done add nutritional yeast (optional) and chopped basil leaves, turn off the stove.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("10- Drain cooked spaghetti, add half the sauce, mix well, serve and let the family dig in immediately.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("11- Let the rest of the sauce cool down to room temperature, store it in an airtight container and freeze it up to 3 months",style: TextStyle(
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

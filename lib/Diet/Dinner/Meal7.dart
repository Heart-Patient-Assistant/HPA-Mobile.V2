import 'package:flutter/material.dart';

class Meal7 extends StatefulWidget {

  @override
  _Meal7State createState() => _Meal7State();
}

class _Meal7State extends State<Meal7> {
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
                'img/meal2.png',
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
                          new Text("' Herbed Couscous,Zucchini '",
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

                    new Text(" • 1cup couscous",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2cups boiling water",style: TextStyle(
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

                    new Text(" • 1/2can chickpeas",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1cup mixed herbs (mint, coriander, dill)",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 1 spear spring onion",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),

                    new Text(" • 2 medium zucchini",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • handfull arugula",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • cherry tomatoes",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 1tbs herbed dressing",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 3tbs olive oil",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text(" • 2tbs Hummus to serve",style: TextStyle(
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
                    new Text("1- Place the couscous in a deep bowl, season with salt and pepper, add boiling water. Cover it and let it stand while you prepare the rest.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("2- Preheat the oven to 190C. Drain and rinse the chickpeas, season it with sea salt and pepper, add 1tsp of olive oil, toss it well, spread it on the baking tray and roast it in the oven for 10, 15 minutes.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("3- Chop all the herbs and spring onions finely.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("4- With the fork fluff the couscous, add 1tbs olive oil, herbs and lemon juice mixing well. Adjust the seasoning to taste",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("5- Slice the zucchini length ways into 1/2cm thick slices. Season it with sea salt and pepper and rub it with 1tsp of olive oil. Grill it on a hot griddle or a nonstick pan.",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("6- Mix the arugula and cherry tomatoes with the dressing",style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("7- To arrange the plates, divide the couscous and salad greens into two bowls or plates. Add chickpeas to the couscous and top it with grilled zucchini. Add a big dollop of hummus on the side.",style: TextStyle(
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

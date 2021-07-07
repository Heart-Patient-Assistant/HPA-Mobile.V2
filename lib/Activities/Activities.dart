import 'package:flutter/material.dart';

class Activities extends StatefulWidget {

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Activities",style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body:Center(
        child: Container(
          child: ListView(
            children: [
              new Padding(padding: EdgeInsets.only(top:h*0.03)),
              new Image.asset(
                'img/activity.jpg',
                height: 300.0,
                width: 600.0,
              ),
              new Container(
                padding: EdgeInsets.only(left: w*0.03),
                child: new Column(
                  children: [
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),
                    new Text("We recommend to you Three Kinds of Exercise That Boost Heart Health",style: TextStyle(
                      color: Colors.teal,
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),
                    new Text("Being physically active is a major step toward good heart health. It’s one of your most effective tools for strengthening the heart muscle, keeping your weight under control and warding off the artery damage from high cholesterol, high blood sugar and high blood pressure that can lead to heart attack or stroke. ",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("It’s also true that different types of exercise are needed to provide complete fitness. “Aerobic exercise and resistance training are the most important for heart health,” says Johns Hopkins exercise physiologist Kerry J. Stewart, Ed.D. “Although flexibility doesn’t contribute directly to heart health, it’s nevertheless important because it provides a good foundation for performing aerobic and strength exercises more effectively.”",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Here’s how different types of exercise benefit you.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),
                    new Text("1- Aerobic Exercise",style: TextStyle(
                        color: Colors.teal,
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("What it does :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Aerobic exercise improves circulation, which results in lowered blood pressure and heart rate, Stewart says. In addition, it increases your overall aerobic fitness, as measured by a treadmill test, for example, and it helps your cardiac output (how well your heart pumps). Aerobic exercise also reduces the risk of type 2 diabetes and, if you already live with diabetes, helps you control your blood glucose.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("How much :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Ideally, at least 30 minutes a day, at least five days a week",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("Examples :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Brisk walking, running, swimming, cycling, playing tennis and jumping rope. Heart-pumping aerobic exercise is the kind that doctors have in mind when they recommend at least 150 minutes per week of moderate activity.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),
                    new Text("2- Resistance Training (Strength Work)",style: TextStyle(
                        color: Colors.teal,
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("What it does :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Resistance training has a more specific effect on body composition, Stewart says. For people who are carrying a lot of body fat (including a big belly, which is a risk factor for heart disease), it can help reduce fat and create leaner muscle mass. Research shows that a combination of aerobic exercise and resistance work may help raise HDL (good) cholesterol and lower LDL (bad) cholesterol.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("How much :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("At least two nonconsecutive days per week of resistance training is a good rule of thumb, according to the American College of Sports Medicine.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("Examples :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Working out with free weights (such as hand weights, dumbbells or barbells), on weight machines, with resistance bands or through body-resistance exercises, such as push-ups, squats and chin-ups.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),
                    new Text("3- Stretching, Flexibility and Balance",style: TextStyle(
                        color: Colors.teal,
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("What it does :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Flexibility workouts, such as stretching, don’t directly contribute to heart health. What they do is benefit musculoskeletal health, which enables you to stay flexible and free from joint pain, cramping and other muscular issues. That flexibility is a critical part of being able to maintain aerobic exercise and resistance training, says Stewart.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("'If you have a good musculoskeletal foundation, that enables you to do the exercises that help your heart,' he says. As a bonus, flexibility and balance exercises help maintain stability and prevent falls, which can cause injuries that limit other kinds of exercise.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("How much :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Every day and before and after other exercise.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.015)),
                    new Text("Examples :",style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.007)),
                    new Text("Your doctor can recommend basic stretches you can do at home, or you can find DVDs or YouTube videos to follow (though check with your doctor if you’re concerned about the intensity of the exercise). Tai chi and yoga also improve these skills, and classes are available in many communities.",style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,),
                    ),
                    new Padding(padding: EdgeInsets.only(top: h*0.03)),

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

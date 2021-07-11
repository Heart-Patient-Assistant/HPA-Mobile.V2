import 'package:flutter/material.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EditProfileState();
  }
}

class _EditProfileState extends State<EditProfile> {
  DatabaseHelper databaseHelper = new DatabaseHelper();
  final TextEditingController user = TextEditingController();
  final TextEditingController bio = TextEditingController();
  final TextEditingController facebookUrl = TextEditingController();
  final TextEditingController twitterUrl = TextEditingController();
  final TextEditingController instagramUrl = TextEditingController();
  final TextEditingController academicTitle = TextEditingController();
  final TextEditingController speciality  = TextEditingController();
  final TextEditingController employmentHistory  = TextEditingController();
  final TextEditingController experience  = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController day = TextEditingController();
  final TextEditingController month = TextEditingController();
  final TextEditingController year = TextEditingController();
  final TextEditingController location = TextEditingController();

  String birthDate= '';
  String profilePic= 'null';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'Edit your Information',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 22.0,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal.shade600,
      ),
      body: new ListView(
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(top: 48)),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: user,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'User ',
                prefixIcon: new Icon(Icons.person_rounded ,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: bio,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(34)),
                labelText: 'Bio',
                prefixIcon: new Icon(Icons.assignment_rounded ,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: facebookUrl,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Facebook Url ',
                prefixIcon: new Icon(Icons.alternate_email_rounded ,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: twitterUrl,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: ' Twitter Url',
                prefixIcon: new Icon(Icons.alternate_email_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: instagramUrl,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Instagram Url ',
                prefixIcon: new Icon(Icons.alternate_email_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: academicTitle,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Academic Title',
                prefixIcon: new Icon(Icons.assignment_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: speciality,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Speciality ',
                prefixIcon: new Icon(Icons.assignment_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: employmentHistory,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Employment History',
                prefixIcon: new Icon(Icons.assignment_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: experience,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Experience',
                prefixIcon: new Icon(Icons.assignment_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: phoneNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Phone Number',
                prefixIcon: new Icon(Icons.phone_rounded,
                    color: Colors.teal.shade600),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 42),
            child: new Text(
              'Birth date:',
              style: TextStyle(
                  fontSize: 19.0,
                  fontFamily: 'Raleway'),
            ),

          ),
          new Padding(padding: EdgeInsets.only(top: 10)),

          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 42),

                child:   Container(
                  height: 60,
                  width: 50,
                  child: new TextField(
                    controller: day,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9)),
                        labelText: 'Day',
                        hintText: '21'

                    ),
                  ),
                ),
              ),
              new Padding(padding: EdgeInsets.only(right: 200)),

              Container(
                padding: EdgeInsets.only(left: 150),
                child:      Container(
                  height: 60,
                  width: 67,
                  child: new TextField(
                    controller: month,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9)),
                        labelText: 'Month',
                        hintText: '07'),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 270),
                child: Container(
                  height: 60,
                  width: 80,
                  child: new TextField(
                    controller: year,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9)),
                        labelText: 'Year',
                        hintText: '1998'
                    ),
                  ),
                ),
              )
            ],
          ),

          new Padding(
            padding: new EdgeInsets.only(top: 34.0),
          ),
          Container(
            margin: EdgeInsets.only(left: 22, right: 22),
            child: new TextField(
              controller: location,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(67)),
                labelText: 'Location',
                prefixIcon:
                new Icon(Icons.location_on_rounded, color: Colors.teal.shade600),
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 44.0),
          ),
          Container(
              alignment: Alignment.center ,
              height: 100,
              width: 400,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new OutlineButton( shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                    onPressed: () {
                      Navigator.of(context).pop(new MaterialPageRoute(
                        builder: (BuildContext context) => new Menu(),
                      ));
                    },
                    child: new Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ),
                  new Container( padding: new EdgeInsets.only(left: 25),
                    child : new RaisedButton( shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                      onPressed: (){
                        _finish();
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomePage()),
                          ModalRoute.withName('/HomePage'),
                        );
                      },
                      color: Colors.teal.shade600,
                      child: new Text(
                        'Update',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textColor: Colors.white,
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }


  _finish() {
    setState(() {

      if (day.text.trim().isEmpty &&
          month.text.trim().isEmpty &&
          year.text.trim().isEmpty ||
          location.text.trim().isEmpty   ) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content:Text("Please input the birth date and Location ") ,
                title: Text(" Complete ",style: TextStyle(color: Colors.blue),),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: new Text(
                        "Ok",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              );
            });
      }else if(day.text.trim().isNotEmpty||
          month.text.trim().isNotEmpty ||
          year.text.trim().isNotEmpty ){
        setState(() {
          int day2 =int.parse(day.text.toString());
          int month2 =int.parse(month.text.toString());
          int year2 =int.parse(year.text.toString());
          birthDate=(year2.toString()+'-'+month2.toString()+'-'+day2.toString());
          setState(() {
            databaseHelper.editData(
                birthDate.trim(),
                location.text.trim(),
            );
          });
          Navigator.of(context).pop(new MaterialPageRoute(
            builder: (BuildContext context) => new Menu(),
          ));
          return print(birthDate);

        });
      }


    });
  }
}

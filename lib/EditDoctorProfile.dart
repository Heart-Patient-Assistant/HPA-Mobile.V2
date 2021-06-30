import 'package:flutter/material.dart';
import 'package:hp_assistant/DoctorProfile.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:hp_assistant/databasehelpler.dart';

class EditDoctorProfile extends StatefulWidget {
  List list;
  int index;
  EditDoctorProfile({this.index, this.list});

  @override
  _EditDoctorProfileState createState() => _EditDoctorProfileState();
}

class _EditDoctorProfileState extends State<EditDoctorProfile> {
  DatabaseHelper databaseHelper = new DatabaseHelper();
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _userNameController ;
  TextEditingController _passwordController ;
  TextEditingController _repeatPasswordController ;
  TextEditingController _ageController;
  TextEditingController _heightController;
  TextEditingController _weightController ;
  TextEditingController _bloodTypeController ;
  TextEditingController _diagnosisController ;


  // void initState(){
  //   _nameController = TextEditingController((text: widget.list[widget.index]['name']));
  //   _emailController = TextEditingController((text: widget.list[widget.index]['email']));
  //  _userNameController = TextEditingController((text: widget.list[widget.index]['userName']));
  //  _passwordController = TextEditingController((text: widget.list[widget.index]['password']));
  //  _repeatPasswordController = TextEditingController((text: widget.list[widget.index]['repeatPassword']));
  //  _ageController = TextEditingController((text: widget.list[widget.index]['age']));
  //  _heightController = TextEditingController((text: widget.list[widget.index]['height']));
  //  _weightController = TextEditingController((text: widget.list[widget.index]['weight'])) ;
  //  _bloodTypeController = TextEditingController((text: widget.list[widget.index]['bloodType'])) ;
  //  _diagnosisController = TextEditingController((text: widget.list[widget.index]['diagnosis'])) ;}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit your information',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Edit your information'),
          backgroundColor: Colors.teal.shade700,
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 32),
          children: <Widget>[
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 22),
                  child:
                  Container(
                    height: 80,
                    width: 170,
                    child: new TextField(
                      controller: null,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(67)),
                        labelText: 'First name',
                        prefixIcon:
                        new Icon(Icons.person, color: Colors.teal.shade600),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 200),
                  child:
                  Container(
                    height: 80,
                    width: 170,
                    child: new TextField(
                      controller: null,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(67)),
                        labelText: 'Last name',
                        prefixIcon:
                        new Icon(Icons.person, color: Colors.teal.shade600),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
            ),
            Container(
              margin: EdgeInsets.only(left: 22, right: 22),
              child: new TextField(
                controller: null,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(67)),
                  labelText: 'Email',
                  prefixIcon: new Icon(Icons.mail_rounded,
                      color: Colors.teal.shade600),
                ),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 34.0),
            ),
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
                      controller: null,
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
                      controller: null,
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

                      controller: null,
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
                controller: null,
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
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => DoctorProfile()),
                            ModalRoute.withName('/DoctorProfile'),
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
        )
      ),
    );
  }
}

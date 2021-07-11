import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hp_assistant/Blog.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:hp_assistant/databasehelpler.dart';
import 'package:hp_assistant/theme_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hp_assistant/theme_provider.dart';

import 'change_theme_button_widget.dart';

class PatientProfile extends StatefulWidget {
  PatientProfile({Key key}) : super(key: key);
  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  PickedFile _imageFile;
  final ImagePicker picker = ImagePicker();
  String _imagePath;
  List post_data;

  DatabaseHelper databaseHelper = new DatabaseHelper();
  @override
  void initState() {
    super.initState();
    loadImage();
    databaseHelper.getData();
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Choose Profile Photo',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  icon: Icon(Icons.camera),
                  label: Text('Camera')),
              new Padding(padding: EdgeInsets.only(left: 100.0)),
              FlatButton.icon(
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  icon: Icon(Icons.image),
                  label: Text('Gallery'))
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  void saveImage(path) async {
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    saveimage.setString("imagePath", path);
  }

  void loadImage() async {
    SharedPreferences saveimage = await SharedPreferences.getInstance();
    setState(() {
      _imagePath = saveimage.getString("imagePath");
    });
  }

  Map data2 = {};

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';

    data2 = ModalRoute.of(context).settings.arguments;

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.teal.shade600,
        actions: [
          // ChangeThemeButtonWidget(),
          // FlatButton.icon(
          //   label: Text(''),
          //   onPressed: () {
          //     Navigator.pushAndRemoveUntil(
          //       context,
          //       MaterialPageRoute(
          //           builder: (BuildContext context) => HomePage()),
          //       ModalRoute.withName('/HomePage'),
          //     );
          //   },
          //   icon: Icon(Icons.home_rounded,
          //   ),
          // ),
          FlatButton.icon(
            label: Text(''),
            onPressed: null,
            icon: Icon(
              Icons.account_circle_rounded,
              size: 50,
            ),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Blog()),
                ModalRoute.withName('/Blog'),
              );
            },
            icon: Icon(
              Icons.add_comment_rounded,
            ),
          ),
          FlatButton.icon(
            label: Text(''),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Menu()),
                ModalRoute.withName('/Menu'),
              );
            },
            icon: Icon(
              Icons.menu_rounded,
            ),
          ),
          new Padding(padding: EdgeInsets.only(right: w * 0.15)),
          ChangeThemeButtonWidget(),
        ],
      ),
      body: new Center(
        child: Column(
          children: [
            new Padding(padding: EdgeInsets.only(top: 30.0)),
            new Stack(
              children: <Widget>[
                _imagePath != null
                    ? CircleAvatar(
                        backgroundImage: FileImage(File(_imagePath)),
                        backgroundColor: Theme.of(context).iconTheme.color,
                        radius: 70,
                      )
                    : CircleAvatar(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        backgroundImage: _imageFile == null
                            ? AssetImage('img/Icon0.png')
                            : FileImage(File(_imageFile.path)),
                        radius: 70,
                        child: Container(
                          padding: EdgeInsets.only(top: 100.0, left: 90.0),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: ((builder) => bottomSheet()));
                            },
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            new ElevatedButton(
              onPressed: () {
                saveImage(_imageFile.path);
              },
              child: Text("Save Picture"),
            ),
            SizedBox(
              height: 20,
            ),

            Expanded(
              child: FutureBuilder(
                future: databaseHelper.showData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  final Map data = snapshot.data;
                  print("pppp: ${data.length}");
                  print(data);
                  //String em = data['email'];
                  return new Container(
                    child:

                    new Column(children: [


                      new Text(
                        'First Name: ${data["first_name"]}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22.0,
                        ),
                      ),
                      new Text(
                        'Last Name: ${data["last_name"]}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22.0,
                        ),
                      ),
                      new Text(
                        'Email: ${data['email']}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22.0,
                        ),
                      ),
                      new Text(
                        'Location: ${data["location"]}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22.0,
                        ),
                      ),
                      new Text(
                        'Bio: ${data["bio"]}',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22.0,
                        ),
                      ),
                    ]),

                  );
                },
              ),
            ),

            // new Container(
            //   alignment: Alignment.center,
            //   child: Text(
            //     'Name : ',
            //     style: TextStyle(
            //       fontSize: 22,
            //       fontFamily: 'Raleway',
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // new Container(
            //   alignment: Alignment.center,
            //   child: Text(
            //     'Email :',
            //     style: TextStyle(
            //       fontSize: 22,
            //       fontFamily: 'Raleway',
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // new Container(
            //   alignment: Alignment.center,
            //   child: Text(
            //     'Location :',
            //     style: TextStyle(
            //       fontSize: 22,
            //       fontFamily: 'Raleway',
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // new Container(
            //   alignment: Alignment.center,
            //   child: Text(
            //     'Bio :',
            //     style: TextStyle(
            //       fontSize: 22,
            //       fontFamily: 'Raleway',
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

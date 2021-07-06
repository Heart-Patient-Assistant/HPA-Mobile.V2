import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hp_assistant/Blog.dart';
import 'package:hp_assistant/HomePage.dart';
import 'package:hp_assistant/Menu.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PatientProfile extends StatefulWidget {
  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {

  PickedFile _imageFile;
  final ImagePicker picker = ImagePicker();
  String _imagePath;
  List post_data;


  @override
  void initState() {
    super.initState();
    loadImage();
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
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

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
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
              icon: Icon(Icons.account_circle_rounded,
                color: Colors.teal.shade600, size: 50,),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Blog()),
                  ModalRoute.withName('/Blog'),
                );
              },
              icon: Icon(Icons.add_comment_rounded,
              ),
            ),
            FlatButton.icon(
              label: Text(''),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Menu()),
                  ModalRoute.withName('/Menu'),
                );
              },
              icon: Icon(Icons.menu_rounded,
              ),
            ),
            new Padding(padding: EdgeInsets.only(right: 15.0)),

          ],
        ),
        body: new Column(
          children: [
            new Padding(padding: EdgeInsets.only(top: 40.0)),
            new Stack(
              children: <Widget>[
                _imagePath != null
                    ? CircleAvatar(
                  backgroundImage: FileImage(File(_imagePath)),
                  radius: 70,
                )
                    : CircleAvatar(
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
                  // Container(
                  //   padding: EdgeInsets.only(top: 100.0,),
                  //   child: InkWell(
                  //     onTap: (){
                  //       saveImage(_imageFile.path);
                  //     },
                  //     child: Icon(Icons.done,color: Colors.green,),
                  //   ),
                  //
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.all(10.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  "Patient's Name",
                  style: TextStyle(
                      fontSize: 20.0, fontStyle: FontStyle.italic),
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.all(20.0)),
            new Card(
              child: new Column(
                children: [
                  new Text("Age:"),
                  new Text("Height:"),
                  new Text("Weight:"),
                  new Text("Blood Type:"),
                ],
              ),
            ),
            new Padding(padding: EdgeInsets.all(20.0)),
            new ElevatedButton(
              onPressed: () {
                saveImage(_imageFile.path);
              },
              child: Text("Save Picture"),
            ),
            new Padding(padding: EdgeInsets.all(40.0)),




          ],
        ));

  }


}


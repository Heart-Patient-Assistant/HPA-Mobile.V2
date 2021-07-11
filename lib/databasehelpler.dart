import 'package:hp_assistant/newPost.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

String type;
String token= "0";
var dataUser;

class DatabaseHelper {
  var status;

  Future<String> registerData(String email, String firstName, String lastName, String password, String password2, String type) async {
    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/signup/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "email": "$email",
          "first_name": "$firstName",
          "last_name": "$lastName",
          "password": "$password",
          "password2": "$password2",
          "type": "$type"
        }));
    print(response.statusCode);
    print(response.body.contains("DOCTOR"));
    print(response.body);

    var data = json.decode(response.body);
    token = data["token"];
    print('data : ${data["token"]}' );
    print(' token: $token');

    if (status = response.body.contains('non_field_errors')) {
      print('data : ${data["non_field_errors"]}');
    } else {
      print('data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  Future<String> loginData(String email, String password) async {
    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/signin/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{"username": "$email", "password": "$password"}));

    print(response.statusCode);
    print(response.body);

    var data = json.decode(response.body);
    token = data["token"];
    print('data : ${data["token"]}' );
    print('saved token: $token');


    if (response.body.contains('DOCTOR')) {
      type = 'DOCTOR';
      return  type ;
    } else if (response.body.contains('PATIENT')) {
      type = 'PATIENT';
      return type;
    }else if (response.body.contains("Unable to log in with provided credentials.")) {
      type = 'NOTFOUND';
      return type;
    }

    print('in dbh ${type}');

    if (status = response.body.contains('non_field_errors')) {
      print('data : ${data["non_field_errors"]}');
    } else {
      print('saved data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  Future<newPost> newPostData (String title, String body) async {
    print(token);
    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/api/blog/create/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Authorization": "Token $token",
        },
        body: jsonEncode(<String, String>{
          "title": "$title",
          "body": "$body",
        }));
    print(response.statusCode);
    print(response.body);

  }

  Future<List> getPostData () async {
    final response = await http.get(
      Uri.parse("https://mahdy.pythonanywhere.com/api/blog/"),
      headers: <String, String>{
        'Content-Type': "application/json; charset=UTF-8",
        "Vary": "Accept",
      },);
    return json.decode(response.body) ;
  }


  Future<Map> getDPostData (int id) async {
    final response = await http.get(
      Uri.parse("https://mahdy.pythonanywhere.com/api/blog/posts/$id/"),
      headers: <String, String>{
        'Content-Type': "application/json; charset=UTF-8",
        "Vary": "Accept",
      },);

    print(response.statusCode);
    print(response.body);
   return json.decode(response.body) ;
  }

  Future<Map> createCommentData (int id) async {
    final response = await http.post(
        Uri.parse(
            "https://mahdy.pythonanywhere.com/api/blog/posts/$id/comments/"),
        headers: <String, String>{
          'Content-Type': "application/json; charset=UTF-8",
          "Authorization": "Token $token",
          "Vary": "Accept",
        },
        body: jsonEncode(<String, String>{
          "body": "body",
        }));
    print(response.statusCode);
    print(response.body);
    return json.decode(response.body) ;

  }

  Future<List> getCommentData (int id) async {
    final response = await http.get(
      Uri.parse("https://mahdy.pythonanywhere.com/api/blog/posts/$id/comments/"),
      headers: <String, String>{
        'Content-Type': "application/json; charset=UTF-8",
        "Vary": "Accept",
      },);

    print(response.statusCode);
    print(response.body);
      return json.decode(response.body) ;

  }


  Future<String> editData(String birthDate, String location,) async {
       print(token);
    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Token $token',
        },
        body: jsonEncode(<String, String>{
          "birth_date": "$birthDate",
          "location": "$location",
        }));
    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');
    // print(' body : ${ jsonEncode(<String, String>{
    //   "birth_date": "$birthDate",
    //   "location": "$location",
    // })}');
       return json.decode(response.body) ;

  }


  Future<Map> showData() async {
    print(token);
    final response = await http.get(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/getprofile/"),
        headers: <String, String>{
         // 'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Token $token',
        },);


    print(response.statusCode);
    print(response.body);
    return json.decode(response.body) ;

  }

  Future<List> searchh(String text) async {
    print(token);
    final response = await http.get(
      Uri.parse("http://127.0.0.1:8000/api/blog/?q=$text"),
      headers: <String, String>{
         'Content-Type': 'application/json; charset=UTF-8',
        "Vary": "Accept",
        //'Authorization': 'Token $token',
      },);


    print(response.statusCode);
    print(response.body);
    return json.decode(response.body) ;

  }




  Future<FB> FbData(String rate, String feedbackCategory, String msg) async {
    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/feedback/givefeedbackapi/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "rate": "$rate",
          "feedbackCategory": "$feedbackCategory",
          "msg": "$msg"
        }));
    print(response.statusCode);
    print(response.body);

  }


  Future<Map> getData() async {
    final response = await http.get(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/getprofile/"),
        headers: <String, String>{
          'Content-Type': "application/json; charset=UTF-8",
          'Authorization': 'Token $token',
          "Vary": "Accept",

        },
        );
    if (response.statusCode==200){
      dataUser = response.body;
      return dataUser;
    }
    // var data = response.body;
    // print('The Data : ${data}');
    // print('Response status for user : ${response.statusCode}');
    // print('Response body for user : ${}');
    // return jsonDecode(response.body);


  }

  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }

  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    print('read : $value');
  }
}

class FB {
  final String rate;
  final String feedbackCategory;
  final String msg;

  FB({
    this.rate,
    this.feedbackCategory,
    this.msg,
  });
  factory FB.fromJson(Map<String, dynamic> json) {
    return FB(
      rate: json['rate'],
      feedbackCategory: json['feedbackCategory'],
      msg: json['msg'],
    );
  }
}

class Register {
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final String password2;

  Register(
      {this.email,
      this.firstName,
      this.lastName,
      this.password,
      this.password2});
  factory Register.fromJson(Map<String, dynamic> json) {
    return Register(
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      password: json['password'],
      password2: json['password2'],
    );
  }
}

class Login {
  final String email;
  final String password;

  Login({this.email, this.password});
  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      email: json['email'],
      password: json['password'],
    );
  }
}

class editD {
  final   String user;
  final   String bio;
  final   String profilePic;
  final   String facebookUrl;
  final   String twitterUrl;
  final   String instagramUrl;
  final   String academicTitle;
  final   String speciality;
  final   String employmentHistory;
  final   String experience;
  final   String phoneNumber;
  final   String birthDate;
  final   String location;

  editD({this.user, this.bio,this.profilePic, this.facebookUrl,this.twitterUrl, this.instagramUrl,this.academicTitle,
    this.speciality,this.employmentHistory, this.experience,this.phoneNumber, this.birthDate,this.location,});
  factory editD.fromJson(Map<String, dynamic> json) {
    return editD(
      user: json['user'],
      bio: json['bio'],
      profilePic: json['profilePic'],
      facebookUrl: json['facebookUrl'],
      twitterUrl: json['twitterUrl'],
      instagramUrl: json['instagramUrl'],
      academicTitle: json['academicTitle'],
      speciality: json['speciality'],
      employmentHistory: json['employmentHistory'],
      experience: json['experience'],
      phoneNumber: json['phoneNumber'],
      birthDate: json['birthDate'],
      location: json['location'],

    );
  }
}

class getD {
  final   String email;
  final   String firstName;
  final   String lastName;
  final   String location;
  final   String bio;
  final   String webUrl;
  final   String birthDate;

  getD({this.email, this.firstName,this.lastName, this.location,this.bio, this.webUrl,this.birthDate});
  factory getD.fromJson(Map<String, dynamic> json) {
    return getD(
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['lastName'],
      location: json['location'],
      bio: json['bio'],
      webUrl: json['webUrl'],
      birthDate: json['birthDate'],
    );
  }
}

class newPost {
  final String title;
  final String body;


  newPost({
        this.title,
        this.body,
  });
  factory newPost.fromJson(Map<String, dynamic> json) {
    return newPost(
      title: json['title'],
      body: json['body'],
    );
  }
}

class getPost {
  final int id;
  final String author;
  final String title;
  final String body;
  final String post_date;
  final String header_image;


  getPost({
    this.id,
    this.author,
    this.title,
    this.body,
    this.post_date,
    this.header_image,
  });
  factory getPost.fromJson(Map<String, dynamic> json) {
    return getPost(
      id: json['id'],
      author: json['author'],
      title: json['title'],
      body: json['body'],
      post_date: json['post_date'],
      header_image: json['header_image'],
    );
  }
}

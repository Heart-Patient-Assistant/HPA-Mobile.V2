import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

bool type;

class DatabaseHelper {
  var status;
  var token;

  Future<Register> registerData(String email, String firstName, String lastName,
      String password, String password2, String type) async {
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
    var data = json.decode(response.body);

    if (status = response.body.contains('non_field_errors')) {
      print('data : ${data["non_field_errors"]}');
    } else {
      print('data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  Future<bool> loginData(String email, String password) async {
    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/signin/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
            <String, String>{"username": "$email", "password": "$password"}));

    print(response.statusCode);
    print(response.body.contains("DOCTOR"));
    print(response.body);

    var data = json.decode(response.body);

    if (response.body.contains('DOCTOR')) {
      return  true;
    } else if (response.body.contains('PATIENT')) {
      return false;
    }

    print('in dbh ${type}');

    if (status = response.body.contains('non_field_errors')) {
      print('data : ${data["non_field_errors"]}');
    } else {
      print('data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  Future<AddDoctor> addDoctorData(String birthDate, String location) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $value'
        },
        body: {
          "birth_date": "$birthDate",
          "location": "$location",
        });
    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');
  }

  Future<AddPatient> addPatientData(String birthDate, String location) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;

    final response = await http.post(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $value'
        },
        body: {
          "birth_date": "$birthDate",
          "location": "$location",
        });
    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');
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

  void editDoctorData(
    String firstName,
    String lastName,
    String email,
    String password,
    String password2,
    String birthDate,
    String location,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;

    final response = await http.put(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $value'
        },
        body: {
          "email": "$email",
          "first_name": "$firstName",
          "last_name": "$lastName",
          "password": "$password",
          "password2": "$password2",
          "birthDate": "$birthDate",
          "location": "$location",
        });
    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');
  }

  void editPatientData(
    String firstName,
    String lastName,
    String email,
    String password,
    String password2,
    String birthDate,
    String location,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;

    final response = await http.put(
        Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $value'
        },
        body: {
          "email": "$email",
          "first_name": "$firstName",
          "last_name": "$lastName",
          "password": "$password",
          "password2": "$password2",
          "birthDate": "$birthDate",
          "location": "$location",
        });
    print('Response status : ${response.statusCode}');
    print('Response body : ${response.body}');
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

class AddDoctor {
  final String location;
  final String birthDate;

  AddDoctor({this.location, this.birthDate});
  factory AddDoctor.fromJson(Map<String, dynamic> json) {
    return AddDoctor(
      location: json['location'],
      birthDate: json['birthDate'],
    );
  }
}

class AddPatient {
  final String location;
  final String birthDate;

  AddPatient({this.location, this.birthDate});
  factory AddPatient.fromJson(Map<String, dynamic> json) {
    return AddPatient(
      location: json['location'],
      birthDate: json['birthDate'],
    );
  }
}

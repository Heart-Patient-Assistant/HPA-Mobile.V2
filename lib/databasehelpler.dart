import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelper{
  var status ;
  var token ;

  Future<Register> registerData(String email ,String firstName ,String lastName , String password, String password2, String type ) async{

    final response = await http.post(Uri.parse("https://mahdy.pythonanywhere.com/api/users/signup/") ,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:jsonEncode(<String, String> {
          "email": "$email",
          "first_name": "$firstName",
          "last_name": "$lastName",
          "password" : "$password",
          "password2" : "$password2",
          "type" : "$type"
        } )) ;
    print(response.statusCode);
    if (response.statusCode ==200) {
      return Register.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to register');
    }

  }


  Future<Login>loginData(String email , String password) async{

    final response = await  http.post(Uri.parse("https://mahdy.pythonanywhere.com/api/users/signin/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "username": "$email",
          "password" : "$password"
        } )) ;
    print(response.statusCode);
    if (response.statusCode == 201) {
      return Login.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Login');
    }
    // status = response.body.contains('non_field_errors');
    // var data = json.decode(response.body);
    // if(status){
    //   print('data : ${data["non_field_errors"]}');
    // }else{
    //   print('data : ${data["token"]}');
    //   _save(data["token"]);
    // }

  }


  Future<AddDoctor> addDoctorData(String birthDate , String location ) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    final response = await  http.post(Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
           headers: <String, String>{
             'Content-Type': 'application/json; charset=UTF-8',
             'Authorization' : 'Bearer $value'
           },
        body: {
          "birth_date": "$birthDate",
          "location": "$location",


        }).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }


  Future<AddPatient> addPatientData(String birthDate,String location ) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    final response = await  http.post(Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : 'Bearer $value'

        },
        body: {
          "birth_date": "$birthDate",
          "location": "$location",


        }).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }




  void editDoctorData(String firstName ,String lastName ,String email , String password, String password2,String birthDate,String location,) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    final response = await  http.put(Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : 'Bearer $value'

        },
        body: {
          "email": "$email",
          "first_name": "$firstName",
          "last_name": "$lastName",
          "password" : "$password",
          "password2" : "$password2",
          "birthDate" : "$birthDate",
          "location" : "$location",
        }).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }
  void editPatientData(String firstName ,String lastName ,String email , String password, String password2,String birthDate,String location,) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    final response = await  http.put(Uri.parse("https://mahdy.pythonanywhere.com/api/users/editprofile/"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization' : 'Bearer $value'

        },
        body: {
          "email": "$email",
          "first_name": "$firstName",
          "last_name": "$lastName",
          "password" : "$password",
          "password2" : "$password2",
          "birthDate" : "$birthDate",
          "location" : "$location",

        }).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }


  // void deleteData(int id) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final key = 'token';
  //   final value = prefs.get(key ) ?? 0;
  //
  //   Uri myUrl = "$serverUrl/products/$id" as Uri;
  //   http.delete(myUrl).then((response){
  //     print('Response status : ${response.statusCode}');
  //     print('Response body : ${response.body}');
  //   });
  // }


  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }


  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;
    print('read : $value');
  }


}

class Register {
  final String email;
  final String firstName;
  final String lastName;
  final String password;
  final String password2;

  Register({this.email, this.firstName,this.lastName, this.password, this.password2});
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

  Login({this.email,this.password});
  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      email: json['email'],
      password: json['password'],
    );
  }
}


class AddDoctor{
  final String location;
  final String birthDate;

  AddDoctor({this.location,this.birthDate});
  factory AddDoctor.fromJson(Map<String, dynamic> json) {
    return AddDoctor(
      location: json['location'],
      birthDate: json['birthDate'],
    );
  }

}

class AddPatient{
  final String location;
  final String birthDate;

  AddPatient({this.location,this.birthDate});
  factory AddPatient.fromJson(Map<String, dynamic> json) {
    return AddPatient(
      location: json['location'],
      birthDate: json['birthDate'],
    );
  }

}
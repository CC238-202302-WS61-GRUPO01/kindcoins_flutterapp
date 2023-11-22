import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String name = "";
  String photoUrl = "";
  String location = "";

  User(String name, String photoUrl, String location) {
    this.name = name;
    this.photoUrl = photoUrl;
    this.location = location;
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

/*Future<User> getUser() async{
  final response = await http.get("");
  if(response.statusCode==200){
    print(response.body);
  }else{
    throw Exception("Connection failed");
  }

  return response;
}*/

class User{
  String name="";
  String photoUrl="";
  String location="";

  User(String name, String photoUrl, String location){
    this.name=name;
    this.photoUrl=photoUrl;
    this.location=location;
  }
}
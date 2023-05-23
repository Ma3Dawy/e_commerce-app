import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Loginmodel {
  String? username;
  String? email;
  String? password;
  Loginmodel({
    required this.username,
    required this.email,
    required this.password,
  });
  Loginmodel.formMap(Map map) {
    username = map["username"];
    email = map["email"];
    password = map["password"];
  }
  Map toMap() {
    return {"username": username, "email": email, "password": password};
  }
  String fromMapToString(Map map) {
    return jsonEncode(map).toString();
  }
   Map formStringtomap(String sourse){
    return jsonDecode(sourse);
  }

}

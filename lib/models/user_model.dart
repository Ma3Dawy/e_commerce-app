import 'dart:convert';

class Usermodel {
  String? username;
  String? password;
  Usermodel(this.username, this.password);
  Usermodel.formmap(Map map) {
    username = map["username"];
    password = map["password"];
  }
  Map tomap() {
    return {"username": username, "password": password};
  }

  String fromStringtoMap(Map map) {
    return jsonEncode(map).toString();
  }

  Map formMaptoString(String source) {
    return jsonDecode(source);
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Profilemodel {
  String? name;
  String? email;
  String? phone;
  String? country;
  Profilemodel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.country});
  Profilemodel.formmap(Map map) {
    name = map["name"];
    email = map["email"];
    phone = map["phone"];
    country = map["country"];
  }
  Map tomap() {
    return {"name": name, "email": email, "phone": phone, "country": country};
  }

  String fromMaptoString(Map map) {
    return jsonEncode(map).toString();
  }

  Map formStringtoMap(String sourse) {
    return jsonDecode(sourse);
  }
}

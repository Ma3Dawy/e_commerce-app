// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Productmodel {
  String? productname;
  double? price;
  Color? color;
  int? productnumber;
  Productmodel({
    required this.productname,
    required this.price,
    required this.color,
    required this.productnumber,
  });
  Productmodel.formmap(Map map) {
    productname = map["productname"];
    price = map["price"];

    productnumber = map["productnumber"];
    color = map["color"];
  }
  Map tomap() {
    return {
      "productname": productname,
      "price": price,
      "productnumber": productnumber,
      "color": color
    };
  }

  String fromMaptoString(Map map) {
    return jsonEncode(map).toString();
  }

  Map formStringtoMap(String sourse) {
    return jsonDecode(sourse);
  }
}

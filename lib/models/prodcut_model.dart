// ignore_for_file: public_member_api_docs, sort_constructors_first
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
    productname = map[""];
        price = map[""];

    productnumber = map[""];
    color = map[""];

  }
}

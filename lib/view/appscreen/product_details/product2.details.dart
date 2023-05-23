import 'package:apptask/components/customization/product_detail.dart';
import 'package:flutter/material.dart';

class Product2 extends StatelessWidget {
  const Product2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Productdetails.productdetails(context,
            assetnumber: 1,
            price: 2452.75,
            sale: 32.5,
            productname: "Macbook Air",
            descriptiontext:
                "13.3-inch (diagonal) LED-backlit display with IPS technology; 2560-by-1600 native resolution at 227 pixels per inch with support for millions of colors"));
  }
}

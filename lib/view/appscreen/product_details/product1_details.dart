import 'package:apptask/components/customization/product_detail.dart';
import 'package:flutter/material.dart';

class Product1 extends StatelessWidget {
  const Product1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Productdetails.productdetails(
        context, 
        assetnumber: 0, 
        price: 150.75,
         sale: 50, 
        productname: "Blutooth Printer",
         descriptiontext:"Bluetooth printers operate via wireless technology that can be configured to operate across iOS, Android & Windows devices"

         ),
    );
  }
}

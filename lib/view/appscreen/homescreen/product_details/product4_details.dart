import 'package:apptask/components/customization/product_details/product_detail.dart';
import 'package:flutter/material.dart';

class Product4 extends StatelessWidget {
  const Product4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Productdetails.productdetails(
        context, 
        assetnumber: 3, 
        price: 50,
         sale: 20, 
        productname: "Anti Blue Light Glass",
         descriptiontext: "Blue light glasses (sometimes called blue light blocking glasses) are glasses that contain lenses specifically designed to reduce the amount of blue light that reaches the eye. These lenses filter blue light rays to help prevent them from entering your eye and causing potential damage."

         ),
    );
  }
}

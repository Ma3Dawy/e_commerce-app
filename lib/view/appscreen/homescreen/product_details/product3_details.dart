import 'package:apptask/components/customization/product_details/product_detail.dart';
import 'package:flutter/material.dart';

class Product3 extends StatelessWidget {
  const Product3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Productdetails.productdetails(context,
          assetnumber: 2,
          price: 1400,
          sale: 59,
          productname: "Iphonw 14 pro max",
          descriptiontext: "The iPhone 14 Pro Max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.69 inches diagonally (actual viewable area is less). Both models: Dynamic Island")
    );
  }
}

import 'package:apptask/components/customization/product_detail.dart';
import 'package:flutter/material.dart';

class Product5 extends StatelessWidget {
  const Product5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Productdetails.productdetails(
        context, 
        assetnumber:4, 
        price:200 ,
         sale: 45, 
        productname: "Waterproof Smart Watchr",
         descriptiontext:" A waterproof smart watch may withstand splashes of water or brief periods of submersion, but it is not designed for extended exposure to wate"

         ),
    );
  }
}

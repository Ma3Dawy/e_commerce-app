import 'package:apptask/components/customization/product_details/Custom.product.dart';
import 'package:flutter/material.dart';

import '../cusrom_list.dart';
import '../../../controlar/navigator_helper.dart';

class Productdetails {
  static productdetails(
    BuildContext context, {
   required int assetnumber,
   required double price,
  required  double sale,
  required productname,
  required String descriptiontext

  }) {
    return Stack(children: [
      Positioned(
        top: 15,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .5,
        child: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(wishlist[assetnumber]['images']),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover)),
          child: Card(
            shape: const CircleBorder(eccentricity: 1),
            child: IconButton(
                onPressed: () {
                  Navigatorhelper.navigatpop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new)),
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .600,
          child: Card(
            shape: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                borderSide: BorderSide(color: Colors.white)),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: ListView(
                children: [
                  Customproductdata.gettext(context,price: price,sale: sale, productname: productname, descriptiontext: descriptiontext),
                  const Text(
                    "Color ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Customproductdata.Colorcheakbox1(
                          context, Colors.red, 1, "cheak1"),
                      const SizedBox(
                        width: 10,
                      ),
                      Customproductdata.Colorcheakbox2(
                          context, Colors.black, 2, "cheak2"),
                      const SizedBox(
                        width: 10,
                      ),
                      Customproductdata.Colorcheakbox3(context,
                          const Color.fromRGBO(33, 150, 200, 1), 3, "cheak2")
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Size ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Customproductdata.getsize(context, "13\""),
                      Customproductdata.getsize(context, "14\""),
                      Customproductdata.getsize(context, "15\""),
                      Customproductdata.getsize(context, "16\""),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.deepPurple)),
                    child: const Text(
                      "Add to Cart",
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

  
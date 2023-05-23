// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:apptask/controlar/navigator_helper.dart';
import 'package:apptask/view/appscreen/product_details/product1_details.dart';
import 'package:apptask/view/appscreen/product_details/product2.details.dart';
import 'package:apptask/view/appscreen/product_details/product3_details.dart';
import 'package:apptask/view/appscreen/product_details/product4_details.dart';
import 'package:apptask/view/appscreen/product_details/product5_detalis.dart';
import 'package:flutter/material.dart';

class Customimage {
  static imagecontainer(BuildContext context, String image, Widget child) {
    return Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high),
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey),
        child: child);
  }

  static customproduct(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String image,
    required int pagenumber,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill,
                    filterQuality: FilterQuality.high
                    )),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Positioned(
                    bottom: 0,
                    left: 90,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: IconButton(
                          alignment: Alignment.bottomRight,
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            switch (pagenumber) {
                              case 0:
                                Navigatorhelper.navigatpush(
                                    context, const Product1());
                                break;
                              case 1:
                                Navigatorhelper.navigatpush(
                                    context, const Product2());

                                break;
                              case 2:
                              Navigatorhelper.navigatpush(
                                 context,const Product3());

                                break;
                                case 3:
                              Navigatorhelper.navigatpush(
                                 context,const Product4());

                                break;
                                case 4:
                              Navigatorhelper.navigatpush(
                                 context,const Product5());
                                break;
                            }
                          },
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.deepPurple,
                          )),
                    )),
              ],
            )),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: const TextStyle(
              color: Colors.deepPurple, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

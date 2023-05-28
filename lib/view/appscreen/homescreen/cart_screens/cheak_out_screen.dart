import 'package:apptask/components/customization/Custom_productbox.dart';
import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/view/appscreen/homescreen/cart_screens/payment.dart';
import 'package:flutter/material.dart';

import '../../../../components/data/appdata/profiledata/profile_screen_bar.dart';
import '../../../../controlar/navigator_helper.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Flexible(
              flex: 3,
              child: ListView(
                children: [
                  ProfileScreenbar.profilebar(context, title: "Check Out"),
                  Boxdata.rowbardata(context,
                      name: "Your Address", buttonname: "Change Address"),
                  Boxdata.chackoutboxdata(
                    context,
                    const Text(
                        "Jone Doe,+961-132135465\nSchool Street,Behind The Official School\nMaghoudeedSaida,Lenanan,1600"),
                  ),
                  Boxdata.rowbardata(context,
                      name: "Shipping Mode", buttonname: "Change Mode"),
                  Boxdata.chackoutboxdata(
                      context,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [Text("Flat Rate"), Text("\$20.0")])),
                  Boxdata.rowbardata(context,
                      name: "Your Cart", buttonname: "View All"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: wishlist.length,
                        itemBuilder: (context, index) => Boxdata.chackoutboxdata(
                            context,
                            Image.asset(
                              wishlist[index]['images'],
                            ))),
                  ),
                  const Text(
                    "Payment Method",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: wishlist.length,
                        itemBuilder: (context, index) => Boxdata.chackoutboxdata(
                            context,
                            TextButton(
                                onPressed: () {},
                                child: Image.asset(payment[index])))),
                  ),
                  const Text("Order Summary",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Boxdata.chackoutboxdata(context,SizedBox(
                    width:  MediaQuery.of(context).size.width,
                    height: 300,
                    child: ListView.builder(
                      itemCount: ordersummry.length,
                      itemBuilder: (context, index) => Text(ordersummry[index]),)))
                ],
              ),
            ),
            Boxdata.rowbardata(context,
                name: "Coupon", buttonname: "Add Coupon Code>"),
            Row(
              children: [
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:const [
                       Text("Total"),
                       SizedBox(height: 10,),
                       Text("\$170.0",style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),Expanded(child: ElevatedButton(
                              onPressed: () {
                                Navigatorhelper.navigatpush(context,  const PaymentScreen());
                              },
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.deepPurple),
                                  fixedSize: MaterialStatePropertyAll(
                                      Size.fromHeight(50))),
                              child: const Text(
                                "Pay Now",
                                style: TextStyle(fontSize: 20),
                              )))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:apptask/components/customization/Custom_productbox.dart';
import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/components/data/appdata/profiledata/profile_screen_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ProfileScreenbar.profilebar(context, title: "Notification"),
            const Text(
              "Promotions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Boxdata.chackoutboxdata(
                context,
                ListTile(
                  title: const Text(
                    "to let you know about upcoming events or reminders, incoming calls, and more",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("10:00 AM"),
                  leading: Image.asset(
                    wishlist[1]["images"],
                  ),
                )),
            Boxdata.chackoutboxdata(
                context,
                ListTile(
                  title: const Text(
                    "Anti blue light glasses, also known as screen glasses, blue light filtering glasses or gaming glasses",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("1 day ago "),
                  leading: Image.asset(
                    wishlist[3]["images"],
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Your Activity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),const SizedBox(
              height: 15,
            ),
            Boxdata.notificationbox(context, title: "Order Arrived", subtitle: "Order 2408971646456803151 has been completed & arrived at the destination address (please rate your order)",
             time: "Yasterday 10:45 AM", icons: Icons.check),
              Boxdata.notificationbox(context, title: "Order Success", subtitle: "Order 2408971646456803151 has been Success.Please wait for the product to be sent (please rate your order)",
             time: "july 20 2020 8:00 AM", icons: Icons.check_box_sharp),
             Boxdata.notificationbox(context, title: "Payment Confirmed ", subtitle: "Payment For Order 2408971646456803151 has been Confirmed.Please wait for the product to be sent (please rate your order)",
             time: "Novamber 20 2020 10:45 AM", icons: Icons.payment),
              Boxdata.notificationbox(context, title: "Order Arrived", subtitle: "Order 2408971646456803151 has been completed & arrived at the destination address (please rate your order)",
             time: "Yasterday 10:45 AM", icons: Icons.check),
             
          ],
        ),
      ),
    );
  }
}

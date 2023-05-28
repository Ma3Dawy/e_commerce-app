import 'package:apptask/components/data/appdata/profiledata/profile_screen_bar.dart';
import 'package:apptask/controlar/navigator_helper.dart';
import 'package:apptask/view/appscreen/homescreen/homescreen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ProfileScreenbar.profilebar(context, title: "Payment"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Icon(Icons.check_sharp,color: Colors.white,),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                  "Payment Successful",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                    child: Text(
                  "Your order will be processed and sent\n       to you as soon as possible",
                  style: TextStyle(color: Colors.black,fontSize: 15),
                )),const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigatorhelper.navigatRepleace(context, Homescreen());
                    },
                    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
                    child: const Text("Continue Shopping"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:apptask/components/customization/Custom_productbox.dart';
import 'package:apptask/components/data/appdata/profiledata/profile_screen_bar.dart';
import 'package:flutter/material.dart';

class SippingAddress extends StatelessWidget {
  const SippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProfileScreenbar.profilebarwithadd(context,
              title: "Shipping Address"),
          const Center(child: Text("Your Shipping Address")),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) => Boxdata.chackoutboxdata(
                  context,
                  TextButton(onPressed: () {},
                    child: const ListTile(
                      title: Text(
                        "Jone Doe,+961-132135465",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          "School Street,Behind The Official School\nMaghoudeedSaida,Lenanan,1600"),
                      leading: Icon(Icons.pin_drop_outlined,color: Colors.deepPurple  ),
                    ),
                  ),
                  high: 150),
            ),
          )
        ],
      ),
    );
  }
}

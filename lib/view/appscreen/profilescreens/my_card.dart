import 'package:flutter/material.dart';

import '../../../components/data/appdata/profiledata/profile_screen_bar.dart';
import '../../../controlar/cubit/thems_cubit/thems_cubit.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ProfileScreenbar.profilebarwithadd(context, title: "My Cards",),
            const Center(child: Text("Your Payment Card")),
            const SizedBox(height: 15,),
            TextButton(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(image: AssetImage("assets/card1.jpg",),fit: BoxFit.fill,)
                ),
              ),
            ),const SizedBox(height: 10,),
            TextButton(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(border: Border.all(color: Colors.deepPurple),borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(image: AssetImage("assets/card2.jpg",),fit: BoxFit.fill,)
                )),
            ),
           
           
      
      
          ],
        ),
      ),
    );
  }
}
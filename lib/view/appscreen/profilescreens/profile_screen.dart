import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/components/data/appdata/profiledata/profile_screen_data.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const SizedBox(height: 20,),
        const CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/ahmed.jpg'),
        ),const SizedBox(height: 10,),
        const Text("Ahmed Hamdy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        const SizedBox(height: 10,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: profile.length,itemBuilder: (context, index) => Profiledata(
            icon: profile[index]['icon'],
            name: profile[index]['name'],
          ),),
        )
      ],
    );
  }
}

import 'package:apptask/controlar/costo_background_image.dart';
import 'package:apptask/models/signup_model.dart';
import 'package:apptask/view/login_screen.dart';
import 'package:flutter/material.dart';

import '../controlar/page_data.dart';

class Sineupscreen extends StatelessWidget {
  const Sineupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Costombackground(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              IconButton(
                alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>const Loginscreen(),));
                  },icon: const Icon(Icons.arrow_back),style: const ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.black)),),
              const SizedBox( height: 35,),
              const Pagedata(
                  title: 'Sing Up ',
                  subtitle: 'PLease Enter Your Informatino below to sing up'),
              const SizedBox(height: 15,),
              Singupmodle()
            ],
          ),
        ),
      ),
    );
    }
  }

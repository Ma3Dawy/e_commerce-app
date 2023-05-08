import 'package:apptask/controlar/costo_background_image.dart';
import 'package:apptask/models/login_models.dart';
import 'package:flutter/material.dart';

import '../controlar/page_data.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body :Costombackground(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(    
          children: [
           const SizedBox(height: 35,),
            const Pagedata(title: 'Welcome Back !',subtitle: 'Login to your exiting account '),
            const SizedBox(height: 15,),
            Loginmodel(),
          ],
            ),
        ),
      ));
  }
}

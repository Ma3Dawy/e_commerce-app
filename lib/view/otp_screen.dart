import 'package:apptask/controlar/costo_background_image.dart';
import 'package:apptask/models/otp_model.dart';
import 'package:apptask/view/login_screen.dart';
import 'package:flutter/material.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Costombackground(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              IconButton(
                alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context) => const Loginscreen(),));
                  },icon: const Icon(Icons.arrow_back)),
                  const SizedBox(height: 35, ),
                  Otpmodel()
            ],
          ),
        ),
      ),
    );
  }
}

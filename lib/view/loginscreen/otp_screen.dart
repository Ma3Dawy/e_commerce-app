import 'package:apptask/components/data/logindata/otp_data.dart';
import 'package:apptask/view/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';

import '../../components/customization/custom_background_image.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Custombackground(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
              IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Loginscreen(),
                        ));
                  },
                  icon: const Icon(Icons.arrow_back)),
              const SizedBox(
                height: 35,
              ),
              Otpmodel()
            ],
          ),
        ),
      ),
    );
  }
}

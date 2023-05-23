import 'package:apptask/components/data/logindata/login_data.dart';
import 'package:flutter/material.dart';

import '../../components/customization/custom_background_image.dart';
import '../../components/customization/logo_data.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Custombackground(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Pagedata(
                title: 'Welcome Back !',
                subtitle: 'Login to your exiting account '),
            const SizedBox(
              height: 15,
            ),
            Logindata(),
          ],
        ),
      ),
    ));
  }
}

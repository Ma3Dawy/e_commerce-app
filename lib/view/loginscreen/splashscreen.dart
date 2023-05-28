import 'package:apptask/controlar/navigator_helper.dart';
import 'package:apptask/view/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../components/customization/custom_background_image.dart';
import '../appscreen/homescreen/homescreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        SharedPreferences shared = await SharedPreferences.getInstance();
        String? user = shared.getString("user");
        if (user!=null) {
          // ignore: use_build_context_synchronously
          Navigatorhelper.navigatRepleace(context,  Homescreen());
      } else {
          // ignore: use_build_context_synchronously
          Navigatorhelper.navigatRepleace(context, const Loginscreen());

        }
      },
    );

    return Scaffold(
        body: Custombackground(
      child: Center(
        child: Image.asset(
          'assets/images.png',
          filterQuality: FilterQuality.high,
          fit: BoxFit.contain,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    ));
  }
}

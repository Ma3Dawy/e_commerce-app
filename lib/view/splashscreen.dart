import 'package:apptask/controlar/costo_background_image.dart';
import 'package:apptask/view/homescreen.dart';
import 'package:apptask/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void didChangeDependencies() async {
    Future.delayed(const Duration(seconds: 3),() async{
      final shared = await SharedPreferences.getInstance();
    final user = shared.getString('user');
    if (user != null) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const Homescreen(),
          ),
          (route) => false);
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Loginscreen()),
          (route) => false);
    }

    },);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Costombackground(
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

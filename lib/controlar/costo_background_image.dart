import 'package:flutter/material.dart';

class Costombackground extends StatelessWidget {
  final Widget ?child;
   const Costombackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/sos.jpg"),
        fit: BoxFit.fill,
      ),
    ),child:child ,
    );
  }
}

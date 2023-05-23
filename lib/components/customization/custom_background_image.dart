import 'package:flutter/material.dart';

class Custombackground extends StatelessWidget {
  final Widget? child;
  const Custombackground({super.key, required this.child});

  static Widget backgroundmeth(BuildContext context,{required String asset,required Widget child}) {
  
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}

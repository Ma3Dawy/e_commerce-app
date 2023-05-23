import 'package:flutter/cupertino.dart';

class Animations {
  static Route buildRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0, 1);
        var end = Offset.zero;

        var tween = Tween(begin: begin, end: end);

        var anim = animation.drive(tween);

        return SlideTransition(
          position: anim,
          child: child,
        );
      },
    );
  }
}

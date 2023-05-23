import 'package:flutter/material.dart';

import '../components/customization/custom_anim.dart';

class Navigatorhelper{
    
    static navigatpush(BuildContext context,Widget screen){
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
    }
      static navigatRepleace(BuildContext context,Widget screen){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => screen));
    }
    static navigatpop(BuildContext context){
        Navigator.pop(context);
    }
    static navigatPushandRemovo(BuildContext context,Widget screen){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => screen,), (route) => false);
    }

   static navigatewithanim(BuildContext context,Widget screen) {
            Navigator.push(context,Animations.buildRoute(screen) );

   }


}
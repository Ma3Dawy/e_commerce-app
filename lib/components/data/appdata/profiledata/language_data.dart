import 'package:flutter/material.dart';

class LanguageData {
    static searchdata(BuildContext context,
      {required String title,
      required String flag}) {
    return Card(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide:BorderSide.none),
      child: TextButton(
        onPressed: (){},
        child: ListTile(
          title:Text(title,style: const TextStyle(color: Colors.black)) ,
          leading:Image.asset(flag,width: 50,height: 50,filterQuality: FilterQuality.high,)
        ),
      ),
    );
  }
  
}
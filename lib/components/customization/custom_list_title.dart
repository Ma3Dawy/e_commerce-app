import 'package:flutter/material.dart';

class CustomlistTilel {
  static coustomlist(BuildContext context, String title, Widget subtitle,
      { IconData? icon,double?width,double?height}) {
    return SizedBox(
      width: width,
      height: height,
      child: ListTile(
        leading: Icon(
          icon,
          size: 50,
          color: Colors.deepPurple,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: subtitle,
      ),
    );
  }
}

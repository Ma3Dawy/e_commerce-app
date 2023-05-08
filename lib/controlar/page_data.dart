// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Pagedata extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const Pagedata({super.key, this.title, this.subtitle,});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title!,
          style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 40),
        ),const SizedBox(height: 15,),
        Text(subtitle!),
        Image.asset(
          'assets/images.png',
          width: 100,
          height: 100,
          filterQuality: FilterQuality.high,
        )
      ],
    );
  }
}

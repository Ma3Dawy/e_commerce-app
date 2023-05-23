import 'package:flutter/material.dart';

class Costomsitingdata {
  static coustomdata(BuildContext context,
      {required String title,
     required String subtiltel,
     required bool switchs,
     required void Function(bool? value) onTap}) {
    return Card(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Row(
            children: [
              Text(subtiltel),
              Switch(value: switchs, onChanged: onTap)
            ],
          )
        ],
      ),
    );
  }
}

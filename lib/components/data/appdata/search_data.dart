import 'package:flutter/material.dart';

class Searchdata {
  static searchdata(BuildContext context,
      {required String title,
      required String subtitle,
      required String photo}) {
    return Card(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide:BorderSide.none),
      child: ListTile(
        title:Text(title,style: const TextStyle(color: Colors.black)) ,
        subtitle: Text("\n$subtitle\n",style: const TextStyle(color: Colors.deepPurple),),
        leading: Image(image: AssetImage(photo)),
        trailing:IconButton(onPressed: () {} ,icon: const Icon(Icons.shopping_cart_outlined,color: Colors.deepPurple)),
      ),
    );
  }
}

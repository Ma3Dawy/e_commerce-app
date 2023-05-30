// ignore: file_names
import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:flutter/material.dart';

class Boxdata {
  static rowbardata(BuildContext context,
      {required String name, required String buttonname}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      TextButton(
          onPressed: () {},
          child: Text(
            buttonname,
            style: const TextStyle(color: Colors.grey),
          ))
    ]);
  }

  static chackoutboxdata(BuildContext context, Widget data, {double? high}) {
    return SizedBox(
      height: high,
      child: Card(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          child: Padding(padding: const EdgeInsets.all(8.0), child: data)),
    );
  }

  static productbox(BuildContext context,
      {required String title,
      required Widget subtitle,
      required Widget leading,
      Widget? child,
      double? width,
      double? height}) {
    return Card(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
      child: SizedBox(
        width: width,
        height: height,
        child: ListTile(
          title: Text(title, style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
          subtitle: subtitle,
          leading: leading,
          trailing: child,
        ),
      ),
    );
  }

  static notificationbox(BuildContext context,{required String title,required String subtitle,required String time,required IconData icons}) {
    return Boxdata.productbox(context,
        title:title,
        subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
                subtitle),
            Text(
             time,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
        leading:  CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 246, 239, 239),
            child: Icon(
             icons,
              color: Colors.deepPurple,
            )));
  }

  static databox(BuildContext context,
      {required int index,
      required void Function() onTap,
      required void Function() onTap2,
      required String cubitnumber}) {
    return Boxdata.productbox(context,
        height: 100,
        title: wishlist[index]['title'],
        subtitle: Text(
          wishlist[index]['subtitle'],
          style: const TextStyle(color: Colors.deepPurple),
        ),
        leading: Image.asset(wishlist[index]['images']),
        child: FittedBox(
            fit: BoxFit.fill,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                  onPressed: onTap,
                  icon: const Icon(
                    Icons.add,
                    size: 50,
                    color: Colors.black,
                  )),
              const SizedBox(height: 20),
              Text(cubitnumber,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 50)),
              IconButton(
                  onPressed: onTap2,
                  icon: const Icon(
                    Icons.minimize,
                    size: 50,
                    color: Colors.black,
                  ))
            ])));
  }
}

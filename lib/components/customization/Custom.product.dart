// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controlar/cubit/color_cubit/color_cheakbox_cubit.dart';

class Customproductdata {
  static gettext(
    BuildContext context, {
   required double price,
   required double sale,
   required String productname,
   required String descriptiontext
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  price.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      fontSize: 20),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  sale.toString(),
                  style: const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                ),
                const SizedBox(width: 15),
                Text('$sale % Off',
                    style: TextStyle(
                        color: Colors.red,
                        background: Paint()..style = PaintingStyle.stroke))
              ],
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
        const SizedBox(height: 15),
         Text(
            productname,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text("Description ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const SizedBox(
          height: 5,
        ),
         Text(
            descriptiontext),
        const SizedBox(height: 15),
      ],
    );
  }

  static Colorcheakbox1(
      BuildContext context, Color colors, int boxnumber, String name) {
    return BlocBuilder<ColorCheakboxCubit, ColorCheakboxState>(
      builder: (context, state) {
        return CircleAvatar(
            backgroundColor: colors,
            child: Checkbox(
                fillColor: MaterialStatePropertyAll(colors),
                side: BorderSide.none,
                value: ColorCheakboxCubit.get(context).cheak1,
                onChanged: (cheak) {
                  ColorCheakboxCubit.get(context).cheakbox1();
                }));
      },
    );
  }

  static Colorcheakbox2(
      BuildContext context, Color colors, int boxnumber, String name) {
    return BlocBuilder<ColorCheakboxCubit, ColorCheakboxState>(
      builder: (context, state) {
        return CircleAvatar(
            backgroundColor: colors,
            child: Checkbox(
                fillColor: MaterialStatePropertyAll(colors),
                side: BorderSide.none,
                value: ColorCheakboxCubit.get(context).cheak2,
                onChanged: (cheak) {
                  ColorCheakboxCubit.get(context).cheakbox2();
                }));
      },
    );
  }

  static Colorcheakbox3(
      BuildContext context, Color colors, int boxnumber, String name) {
    return BlocBuilder<ColorCheakboxCubit, ColorCheakboxState>(
      builder: (context, state) {
        return CircleAvatar(
            backgroundColor: colors,
            child: Checkbox(
                fillColor: MaterialStatePropertyAll(colors),
                side: BorderSide.none,
                value: ColorCheakboxCubit.get(context).cheak3,
                onChanged: (cheak) {
                  ColorCheakboxCubit.get(context).cheakbox3();
                }));
      },
    );
  }

  static getsize(BuildContext context, String size) {
    return Card(
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(15, 10))),
        child: TextButton(
            onPressed: () {},
            child: Text(
              size,
              style: const TextStyle(color: Colors.black),
            )));
  }
}

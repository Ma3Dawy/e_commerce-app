import 'package:apptask/components/customization/custom_image.dart';
import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:flutter/material.dart';

class CatagoryData extends StatelessWidget {
  const CatagoryData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: GridView.builder(
        itemCount: images.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Customimage.imagecontainer(
              context, images[index], text[index]);
        },
      ),
    );
  }
}

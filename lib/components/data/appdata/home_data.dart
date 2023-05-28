import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/components/customization/custom_searchbar.dart';
import 'package:flutter/material.dart';

import '../../customization/Custom_productbox.dart';
import '../../customization/custom_image.dart';
import '../../customization/customvie.dart';

class Homescreendata extends StatelessWidget {
  Homescreendata({super.key});
  final serach = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Searchbar.homescreensearchbar(context, searchname: "Search Product"),
       Boxdata.rowbardata(context,name: "Special for you",buttonname: "see more"),
        Customlistview.customview(
          context,
          child:ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) =>Customimage.imagecontainer(context, images[index], text[index]),)
        ),
        Boxdata.rowbardata(context,name: "Featured Products",buttonname: "see more"),
        Customlistview.customview(context,
            child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: wishlist.length,
                  itemBuilder: (context, index) => Customimage.customproduct(context,
                  title: wishlist[index]["title"],
                  subtitle: wishlist[index]["subtitle"],
                  image: wishlist[index]["images"],
                  pagenumber: index
                             ),)),       
        Boxdata.rowbardata(context,name: "Best Selling Products",buttonname: "see more"),
        Customlistview.customview(context,
            child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: wishlist.length,
                  itemBuilder: (context, index) => Customimage.customproduct(context,
                  title: wishlist[index]["title"],
                  subtitle: wishlist[index]["subtitle"],
                  image: wishlist[index]["images"],
                  pagenumber: index
                             ),),       
            )],
    );
  }
}

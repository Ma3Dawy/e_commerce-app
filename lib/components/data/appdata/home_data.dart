import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/components/customization/custom_searchbar.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../../customization/custom_image.dart';
import '../../customization/customvie.dart';

class Homescreendata extends StatelessWidget {
   Homescreendata({super.key});
 final serach = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Searchbar(searchtext: 'Search Prodect',)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
           Card(
            shape: const CircleBorder(eccentricity: 1),
             child: badges.Badge (badgeContent: const Text('5',style: TextStyle(color: Colors.white),),
             badgeAnimation: const badges.BadgeAnimation.scale(),
             showBadge: true ,
             badgeStyle: const badges.BadgeStyle(shape: badges.BadgeShape.circle,badgeColor: Colors.deepPurple),
             position: badges.BadgePosition.topEnd(end: 2),
                child: IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart_outlined,color: Colors.deepPurple,))),
           ),
            Card(shape: const CircleBorder(eccentricity: 1),
              child: IconButton(onPressed: (){}, icon:const Icon(Icons.notifications_none,color: Colors.deepPurple)))
              ],
            ),
          ],
        ),Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Special For you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextButton(onPressed: (){}, child: const Text('See more',style: TextStyle(color: Colors.grey),))
            ],
          ),
        Customlistview.customview(
          context,child: ListView(
          scrollDirection: Axis.horizontal,
           children: [
            Customimage.imagecontainer(context,'assets/laptop.png',const Text('Computer')),
            Customimage.imagecontainer(context,'assets/photo.jpg',const Text('Phones & Accesorise')),
            Customimage.imagecontainer(context,'assets/light.png',const Text('Light and Lighting')),
            Customimage.imagecontainer(context,'assets/office.jpg',const Text('Office Equipment')),
                    ],
                  ),),
             
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Featured Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextButton(onPressed: (){}, child: const Text('See more',style: TextStyle(color: Colors.grey),))
            ],
          ),Customlistview.customview(
            context, 
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Customimage.customproduct(context, title: wishlist[0]["title"], subtitle: wishlist[0]["subtitle"], image: wishlist[0]["images"],pagenumber: 0),
                Customimage.customproduct(context, title: wishlist[1]["title"], subtitle: wishlist[1]["subtitle"], image: wishlist[1]["images"],pagenumber: 1),
                Customimage.customproduct(context, title: wishlist[2]["title"], subtitle: wishlist[2]["subtitle"], image: wishlist[2]["images"],pagenumber: 2),
                Customimage.customproduct(context, title: wishlist[3]["title"], subtitle: wishlist[3]["subtitle"], image: wishlist[3]["images"],pagenumber: 3),
                const SizedBox(width: 5,),
                Customimage.customproduct(context, title: wishlist[4]["title"], subtitle: wishlist[4]["subtitle"], image: wishlist[4]["images"],pagenumber: 4)

              ],
            )
            ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Best Selling Product  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              TextButton(onPressed: (){}, child: const Text('See more',style: TextStyle(color: Colors.grey),))
            ],
          ),Customlistview.customview(
            context, 
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Customimage.customproduct(context, title: wishlist[0]["title"], subtitle: wishlist[0]["subtitle"], image: wishlist[0]["images"],pagenumber: 0),
                Customimage.customproduct(context, title: wishlist[1]["title"], subtitle: wishlist[1]["subtitle"], image: wishlist[1]["images"],pagenumber: 1),
                Customimage.customproduct(context, title: wishlist[2]["title"], subtitle: wishlist[2]["subtitle"], image: wishlist[2]["images"],pagenumber: 2),
                Customimage.customproduct(context, title: wishlist[3]["title"], subtitle: wishlist[3]["subtitle"], image: wishlist[3]["images"],pagenumber: 3),
                const SizedBox(width: 5,),
                Customimage.customproduct(context, title: wishlist[4]["title"], subtitle: wishlist[4]["subtitle"], image: wishlist[4]["images"],pagenumber: 4)

              ],
            )
            ),
        ],
    );
  }
}

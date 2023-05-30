import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:flutter/material.dart';
import '../../components/customization/custom_searchbar.dart';
import '../../components/customization/Custom_productbox.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
            child: Text(
          "Wish List",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
        const SizedBox(
          height: 20,
        ),
        Searchbar.searchbar(context,'Search Product'),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: wishlist.length,
            itemBuilder: (context, index) => Boxdata.productbox(context,
                title: wishlist[index]['title'],
                subtitle:Text( wishlist[index]['subtitle'],style: const TextStyle(color:Colors.deepPurple),),
                leading:Image.asset(wishlist[index]['images']) ,
                child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined,
                color: Colors.deepPurple)),
                ),
          ),
        )
      ],
    );
  }
}

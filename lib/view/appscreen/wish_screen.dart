import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:flutter/material.dart';
import '../../components/customization/custom_searchbar.dart';
import '../../components/data/appdata/search_data.dart';

class WishScreen extends StatelessWidget {
  const WishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        const Center(child: Text("Wish List",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
         const SizedBox(height: 20,),
         const Searchbar(searchtext: 'Search Product'),
         const SizedBox(height: 15,),
         SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
           child: ListView.builder(
            itemCount: wishlist.length,
            itemBuilder: (context, index) => Searchdata.searchdata(context,
             title: wishlist[index]['title'],
               subtitle: wishlist[index]['subtitle'],
              photo: wishlist[index]['images']),
            ),
         )
        
        ],
    );
 
  }
}
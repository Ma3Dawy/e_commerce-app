import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/components/data/appdata/search_data.dart';
import 'package:flutter/material.dart';
import '../../components/customization/custom_searchbar.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        const Center(child: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
         const SizedBox(height: 20,),
         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
              const Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: Searchbar(searchtext: 'Search Categories')),
             Card(shape: const CircleBorder(eccentricity: 1),
              child: IconButton(onPressed: (){}, icon:const Icon(Icons.menu,color: Colors.deepPurple,))),
           ],
         ),
         const SizedBox(height: 15,),
         SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
           child: ListView.builder(
            itemCount: search.length,
            itemBuilder: (context, index) => Searchdata.searchdata(context,
             title: search[index]['title'],
               subtitle: search[index]['subtitle'],
              photo: search[index]['images']),
            ),
         )
        
        ],
    );
  }
}
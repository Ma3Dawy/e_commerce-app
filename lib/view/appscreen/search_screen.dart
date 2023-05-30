import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:apptask/components/customization/Custom_productbox.dart';
import 'package:flutter/material.dart';
import '../../components/customization/custom_searchbar.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
            child: Text(
          "Search",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Flexible(
                fit: FlexFit.loose,
                flex: 3,
                child: Searchbar.searchbar(context,'Search here')),
            Card(
                shape: const CircleBorder(eccentricity: 1),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.deepPurple,
                    ))),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: search.length,
            itemBuilder: (context, index) => Boxdata.productbox(context,
                title: search[index]['title'],
                subtitle:Text( search[index]['subtitle'],style: const TextStyle(color:Colors.deepPurple),),
                leading:Image.asset(search[index]['images']) ,
                child:  IconButton(
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

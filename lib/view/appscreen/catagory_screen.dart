import 'package:apptask/components/customization/custom_searchbar.dart';
import 'package:apptask/components/data/appdata/catagory_data.dart';
import 'package:flutter/material.dart';

class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const [
         Center(child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
         SizedBox(height: 20,),
         Searchbar(searchtext: 'Search Categories'),
         SizedBox(height: 20,),
         SizedBox(child: CatagoryData()),
        
      ],
    );
  }
}

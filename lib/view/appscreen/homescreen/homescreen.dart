import 'package:apptask/components/data/appdata/home_data.dart';
import 'package:apptask/controlar/provider/cheak.dart';
import 'package:apptask/view/appscreen/profilescreens/profile_screen.dart';
import 'package:apptask/view/appscreen/search_screen.dart';
import 'package:apptask/view/appscreen/wish_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../catagory_screen.dart';

// ignore: must_be_immutable
class Homescreen extends ConsumerWidget {
  Homescreen({super.key});
  List<Widget> screnn = [
    Homescreendata(),const CatagoryScreen(),const Searchscreen(),const WishScreen(),const Profilescreen()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(counterProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey), label: 'home',)
          ,BottomNavigationBarItem(icon: Icon(Icons.grid_view_sharp,color: Colors.grey),label: 'Catagory')
          ,BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.grey),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.grey),label: 'Favorit'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: Colors.grey),label: 'Profile'),

          ],selectedLabelStyle: const TextStyle(color: Colors.deepPurple),   
        currentIndex: counter,
        onTap: (value) {
          // ignore: invalid_use_of_protected_member
          ref.watch(counterProvider.notifier).state = value;
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            screnn[counter]          
            ],
        ),
      ),
    );
  }
}

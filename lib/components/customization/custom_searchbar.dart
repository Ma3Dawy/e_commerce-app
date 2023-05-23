import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key, required this.searchtext});
  final String searchtext;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Card(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
               borderSide: BorderSide.none),
            child: ListTile(
              leading: const Icon(
                Icons.search,
                color: Colors.deepPurple,
              ),
              title: TextFormField(
                decoration:  InputDecoration(
                    hintText: searchtext, border: InputBorder.none),
              ),
            )),
      ],
    );
  }
}

import 'package:apptask/components/customization/cusrom_list.dart';
import 'package:flutter/material.dart';

import '../../../components/data/appdata/profiledata/language_data.dart';
import '../../../components/data/appdata/profiledata/profile_screen_bar.dart';

class LangouageSetting extends StatelessWidget {
  const LangouageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ProfileScreenbar.profilebar(context, title: "Language"),
            const Center(child: Text("Select a Language")),
            const SizedBox(height: 15,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: language.length,
                itemBuilder: (context, index) => LanguageData.searchdata(context,
                 title: language[index]["name"], 
                 flag: language[index]["flage"]),)
              )
          ],
        ),
      ),
    );
  }
}
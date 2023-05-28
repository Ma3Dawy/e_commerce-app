import 'package:apptask/components/data/appdata/profiledata/edit_profile.dart';
import 'package:flutter/material.dart';

import '../../../components/data/appdata/profiledata/profile_screen_bar.dart';

class Editaccount extends StatelessWidget {
  const Editaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ProfileScreenbar.profilebar(context, title: "Edit Profile"),
            const SizedBox(
              height: 15,
            ),
            Editprofile()
          ],
        ),
      ),
    );
  }
}

import 'package:apptask/view/appscreen/profilescreens/my_card.dart';
import 'package:apptask/controlar/navigator_helper.dart';
import 'package:apptask/view/appscreen/profilescreens/order_screen.dart';
import 'package:apptask/view/appscreen/profilescreens/shipping_address.dart';
import 'package:apptask/view/loginscreen/login_screen.dart';
import 'package:apptask/view/loginscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../view/appscreen/profilescreens/contact_us.dart';
import '../../../../view/appscreen/profilescreens/edit_account.dart';
import '../../../../view/appscreen/profilescreens/langouage_setting.dart';
import '../../../../view/appscreen/profilescreens/setting_screen.dart';

class Profiledata extends StatelessWidget {
  const Profiledata({super.key, this.icon, this.name});
  final IconData? icon;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Colors.white)),
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      icon,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () async {
                          if (name == 'My Ordere') {
                            Navigatorhelper.navigatpush(
                                context, const Orderscreen());
                          }
                          if (name == 'My Account') {
                            Navigatorhelper.navigatpush(
                                context, const Editaccount());
                          }
                          if (name == 'Langouage Setting') {
                            Navigatorhelper.navigatpush(
                                context, const LangouageSetting());
                          }
                          if (name == 'Shipping Address') {
                            Navigatorhelper.navigatpush(
                                context, const SippingAddress());
                          }
                          if (name == 'My Card') {
                            Navigatorhelper.navigatpush(context, const Cards());
                          }
                          if (name == 'Setting') {
                            Navigatorhelper.navigatpush(
                                context, const Settingscreen());
                          }
                          if (name == 'FAQ') {
                            Navigatorhelper.navigatpush(context, ContactUs());
                          }
                          if (name == 'Log out') {
                            SharedPreferences sharedPreferences =
                                await SharedPreferences.getInstance();
                            sharedPreferences.clear();
                            Navigatorhelper.navigatPushandRemovo(
                                context, const Splashscreen());
                          }
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white)),
                        child: Text(
                          name!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ))
                  ],
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

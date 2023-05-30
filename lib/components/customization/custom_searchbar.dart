import 'package:apptask/view/appscreen/homescreen/notification.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../../controlar/navigator_helper.dart';
import '../../view/appscreen/homescreen/cart_screens/cart_screen.dart';

class Searchbar {
  static searchbar(BuildContext context, String text) {
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
                decoration:
                    InputDecoration(hintText: text, border: InputBorder.none),
              ),
            )),
      ],
    );
  }

  static homescreensearchbar(
    BuildContext context, {
    required String searchname,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Searchbar.searchbar(context, searchname)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              shape: const CircleBorder(eccentricity: 1),
              child: badges.Badge(
                  badgeContent: const Text(
                    '5',
                    style: TextStyle(color: Colors.white),
                  ),
                  badgeAnimation: const badges.BadgeAnimation.scale(),
                  showBadge: true,
                  badgeStyle: const badges.BadgeStyle(
                      shape: badges.BadgeShape.circle,
                      badgeColor: Colors.deepPurple),
                  position: badges.BadgePosition.topEnd(end: 2),
                  child: IconButton(
                      onPressed: () {
                        Navigatorhelper.navigatpush(
                            context, const CartScereen());
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.deepPurple,
                      ))),
            ),
            Card(
                shape: const CircleBorder(eccentricity: 1),
                child: IconButton(
                    onPressed: () {
                      Navigatorhelper.navigatpush(
                          context, const NotificationScreen());
                    },
                    icon: const Icon(Icons.notifications_none,
                        color: Colors.deepPurple)))
          ],
        ),
      ],
    );
  }
}

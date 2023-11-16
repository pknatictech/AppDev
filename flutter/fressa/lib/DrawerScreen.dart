import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Resources.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  menuButton(icon, text, routename) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routename);
      },
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: primarycolor,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 15, color: primarycolor),
          ),
        ],
      ),
    );
  }

  menuButtonmiddle(icon, text, routename) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, routename);
        },
        child: Row(
          children: [
            Icon(
              icon,
              size: 25,
              color: primarycolor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20, color: primarycolor),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 50, left: 10, bottom: 25),
        color: Colors.orange.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage("img/profile.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pushpendra Kumar ",
                      style: TextStyle(
                          color: primarycolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "Active Status",
                      style: TextStyle(color: Colors.orange.shade600),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                menuButtonmiddle(Icons.home, "Home", " "),
                menuButtonmiddle(Icons.shopping_basket, "My Cart", " "),
                menuButtonmiddle(Icons.history, "Order History", " "),
                menuButtonmiddle(Icons.code, "Enter Promo Code", " "),
                menuButtonmiddle(Icons.wallet, "Wallet", " "),
                menuButtonmiddle(Icons.favorite, "favorites", " "),
                menuButtonmiddle(Icons.question_answer, "FAQ", " "),
                menuButtonmiddle(Icons.contact_phone, "Support", " "),
              ],
            ),
            Row(
              children: [
                menuButton(Icons.settings, "Settings", "route"),
                Text(
                  " | ",
                  style: TextStyle(fontSize: 20, color: primarycolor),
                ),
                menuButton(Icons.logout, "Menu", "Logout"),
              ],
            ),
          ],
        ));
  }
}

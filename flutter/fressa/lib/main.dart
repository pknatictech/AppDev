import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'DrawerScreen.dart';
import 'Itemdetail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "itemdetail" : (context)=> Itemdetail(),
        "HomeScreen" : (context)=> HomeScreen(),
      },
      home: Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}

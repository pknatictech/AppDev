import 'package:flutter/material.dart';
import 'package:fressa/Resources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double x = 0;
  double y = 0;
  double scalefactor = 1;
  bool isdrwaeropen = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(x, y, 0)..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isdrwaeropen
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            x = 0;
                            y = 0;
                            scalefactor = 1;
                            isdrwaeropen = false;
                          });
                        },
                        icon: Icon(Icons.arrow_back_rounded))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            x = 240;
                            y = 150;
                            scalefactor = 0.6;
                            isdrwaeropen = true;
                          });
                        },
                        icon: Icon(Icons.menu)),
                Column(
                  children: [
                    Text(
                      "FRESSA",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: primarycolor,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: primarycolor, size: 15),
                        Text("Aligarh", style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: primarycolor,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: TextField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 2.2),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primarycolor),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                prefixIcon: Icon(Icons.search, color: primarycolor),
                hintText: "Search",
                filled: true,
                fillColor: Colors.orange.shade50,
              ),
            ),
          ),
          Container(
            height: 140,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: Shadow,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.asset(categories[index]['iconPath']),
                        ),
                        Text(categories[index]['name'],style: TextStyle(color: primarycolor),),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}

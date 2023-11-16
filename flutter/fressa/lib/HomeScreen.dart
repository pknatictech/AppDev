import 'package:flutter/material.dart';
// import 'package:fressa/Itemdetail.dart';
import 'package:fressa/Resources.dart';

var image = 0;

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isdrwaeropen ? 40 : 0),
        color: Colors.white,
      ),
      transform: Matrix4.translationValues(x, y, 0)..scale(scalefactor),
      duration: Duration(milliseconds: 250),
      child: Stack(
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 35),
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
                      firmname_detail[0]['name'],
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: primarycolor,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: primarycolor, size: 15),
                        Text(firmname_detail[0]['location'],
                            style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  foregroundImage: AssetImage("img/profile.jpg"),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 90),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 10),
                    child: TextField(
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 2.2),
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
                  SizedBox(
                    height: 140,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                margin: EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: shadow,
                                    borderRadius: BorderRadius.circular(20)),
                                child:
                                    Image.asset(categories[index]['iconPath']),
                              ),
                              Text(
                                categories[index]['name'],
                                style: TextStyle(color: primarycolor),
                              ),
                            ],
                          );
                        }),
                  ),
                  Container(
                    height: 20,
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Top Salable items ❤️",
                      style: TextStyle(
                          color: primarycolor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange.shade50,
                                  boxShadow: shadow,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(top: 40),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Itemdetail()));
                                  Navigator.pushNamed(context, "itemdetail");
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 250,
                                  child: Hero(
                                      tag: 1,
                                      child: Image.asset(
                                          imagedata[image]['imagepath'])),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: 220,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Strawberry juice",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Only",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "119/-",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 60, bottom: 20),
                          decoration: BoxDecoration(
                              boxShadow: shadow,
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        )),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orange.shade50,
                                  boxShadow: shadow,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(top: 40),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Itemdetail()));
                                  Navigator.pushNamed(context, "itemdetail");
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 250,
                                  child: Hero(
                                      tag: 2,
                                      child: Image.asset(
                                          imagedata[image + 1]['imagepath'])),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(top: 60, bottom: 20),
                          decoration: BoxDecoration(
                              boxShadow: shadow,
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

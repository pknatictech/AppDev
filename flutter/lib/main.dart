import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var temp = 0;
  var city = "Aligarh";
  var searchapiurl = '';
  void fetchdata(String input) {

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/bg.jpg'), fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Text(
                      temp.toString() + ' C ',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      city,
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          child: TextField(
                            style: TextStyle(fontSize: 22, color: Colors.white),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2.2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.white),
                              hintText: "Search City",
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.white70),
                            ),
                          ),
                          // child: TextField(
                          //   style: TextStyle(
                          //       fontSize: 25,
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white),
                          //   decoration: InputDecoration(
                          //     border: OutlineInputBorder(
                          //       borderRadius: BorderRadius.circular(20),
                          //     ),
                          //
                          //     fillColor: Colors.white54,
                          //     hintText: 'Search City',
                          //     hintStyle: TextStyle(
                          //         fontSize: 25,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.white30),
                          //     prefixIcon: Icon(Icons.search,color: Colors.white,),
                          //   ),
                          // ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

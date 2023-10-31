import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = 'Coding Ninjas Flutter RaisedButton';
  List<String> names = ["this", "Is", "My", "List"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 500,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: names.length,
                itemBuilder: (context,index) {
                  return Text(names[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

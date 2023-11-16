import 'package:flutter/material.dart';
import 'second_page.dart'; // Import the SecondPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      routes: {
        '/secondPage': (context) =>
            SecondPage(), // Define route to the SecondPage
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String ? dropdownValue; // Variable to hold the selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue; // Update the selected value
                });
              },
              items: <String>['Page 1', 'Page 2', 'Page 3']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (dropdownValue != null) {
                  // Navigate to the selected page
                  Navigator.pushNamed(context, '/secondPage',
                      arguments: dropdownValue);
                }
              },
              child: Text('Submit and Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}

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
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              color: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: const Text(
                'Flat Button',
                style: TextStyle(color: Colors.white, fontSize: 13.0),
              ),
            ),
          ),
          ElevatedButton(
            child: const Text(
              'Raised Button',
            ),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
            style: ElevatedButton.styleFrom(
                elevation: 12.0,
                textStyle: const TextStyle(color: Colors.white)),
            child: const Text('Elevated Button'),
          ),
          FloatingActionButton(
            child: Icon(Icons.person),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onPressed: () {},
          ),
          OutlinedButton(
            child: Text(
              "Outlined Button",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            splashColor: Colors.yellow,
            icon: Icon(Icons.code),
            color: Colors.green,
            onPressed: () {},
          ),
          TextButton(
            child: Text(
              "Text Button",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Profile"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Account"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("Settings"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("About GFG"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Go Premium"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Logout"),
                value: 1,
              ),
            ],
          ),
          // Define a variable to hold the selected value

          DropdownButton<String>(
            value: dropdownValue,
            onChanged: (String? newValue) {
              // Action when a new value is selected
              // Update state to change dropdownValue
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['Option 1', 'Option 2', 'Option 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),

          BackButton(
            onPressed: () {},
          ),
          CloseButton(
            onPressed: () {},
          ),
          DrawerButton(
            onPressed: () {},
          ),
        ],
      ))),
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     body: Column(
    //       children: [
    //         SizedBox(
    //           height: 100,
    //         ),
    //         Container(
    //           height: 500,
    //           child: ListView.builder(
    //             scrollDirection: Axis.vertical,
    //             itemCount: names.length,
    //             itemBuilder: (context,index) {
    //               return Text(names[index],
    //               );
    //             },
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}

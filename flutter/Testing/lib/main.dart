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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              ),ElevatedButton(
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
              ),IconButton(
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
              ),PopupMenuButton(
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
              BackButton(
                onPressed: (){},
              ),
              CloseButton(
                onPressed: (){},
              ),
              DrawerButton(
                onPressed: () {},
              ),



            ],
          )
        )
      ));
  }
  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'We have learned what FlutterRaised button is.';
      } else {
        msg = 'Coding Ninjas Flutter RaisedButton';
      }
    });
  }
}
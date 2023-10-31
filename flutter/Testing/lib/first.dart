import 'package:flutter/material.dart';
class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );

  }
}

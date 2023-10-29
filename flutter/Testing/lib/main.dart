// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   String msg = 'Coding Ninjas Flutter RaisedButton';
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 60,
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: Container(
//                   color: Colors.green,
//                   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                   child: const Text(
//                     'Flat Button',
//                     style: TextStyle(color: Colors.white, fontSize: 13.0),
//                   ),
//                 ),
//               ),ElevatedButton(
//                 child: const Text(
//                   'Raised Button',
//                 ),
//                 onPressed: () {},
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
//                 style: ElevatedButton.styleFrom(
//                     elevation: 12.0,
//                     textStyle: const TextStyle(color: Colors.white)),
//                 child: const Text('Elevated Button'),
//               ),
//               FloatingActionButton(
//                 child: Icon(Icons.person),
//                 backgroundColor: Colors.green,
//                 foregroundColor: Colors.white,
//                 onPressed: () {},
//               ),
//               OutlinedButton(
//                 child: Text(
//                   "Outlined Button",
//                   style: TextStyle(
//                     color: Colors.green,
//                   ),
//                 ),
//                 onPressed: () {},
//               ),IconButton(
//                 splashColor: Colors.yellow,
//                 icon: Icon(Icons.code),
//                 color: Colors.green,
//                 onPressed: () {},
//               ),
//               TextButton(
//                 child: Text(
//                   "Text Button",
//                   style: TextStyle(
//                     color: Colors.green,
//                   ),
//                 ),
//                 onPressed: () {},
//               ),PopupMenuButton(
//                 itemBuilder: (context) => [
//                   PopupMenuItem(
//                     child: Text("Profile"),
//                     value: 1,
//                   ),
//                   PopupMenuItem(
//                     child: Text("Account"),
//                     value: 2,
//                   ),
//                   PopupMenuItem(
//                     child: Text("Settings"),
//                     value: 1,
//                   ),
//                   PopupMenuItem(
//                     child: Text("About GFG"),
//                     value: 1,
//                   ),
//                   PopupMenuItem(
//                     child: Text("Go Premium"),
//                     value: 1,
//                   ),
//                   PopupMenuItem(
//                     child: Text("Logout"),
//                     value: 1,
//                   ),
//                 ],
//               ),
//               BackButton(
//                 onPressed: (){},
//               ),
//               CloseButton(
//                 onPressed: (){},
//               ),
//               DrawerButton(
//                 onPressed: () {},
//               ),
//
//             ],
//           )
//         )
//       ));
//   }
//   _changeText() {
//     setState(() {
//       if (msg.startsWith('F')) {
//         msg = 'We have learned what FlutterRaised button is.';
//       } else {
//         msg = 'Coding Ninjas Flutter RaisedButton';
//       }
//     });
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    printmail(label,sender,subject,message,color)
    {
      return Container(
        height: 70,
        child: Row(
          children: [
            Container(
              // color: Colors.orange,
              width: MediaQuery.of(context).size.width * .2,
              child: CircleAvatar(
                maxRadius: 27,
                backgroundColor: color,
                child: Text(label,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.white),),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sender,
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                  Text(subject,
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  Text(message,style: TextStyle(fontSize: 15,),),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width *.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("3:34 pm",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Icon(Icons.star_border)
                ],
              ),
            ),
          ],
        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "G-Mail",
      home: Scaffold(
        appBar: AppBar(
          shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.elliptical(12,13))),
          title: Text("Search in mails"),
          backgroundColor: Colors.indigo,
          leading: IconButton(onPressed: (){},icon: Icon(Icons.menu),),
          actions: [
            IconButton(onPressed: (){},icon: Icon(Icons.search),),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.indigo,
          child: const Icon(Icons.create),
        ),
        body: ListView(
          children: [
            printmail("L","Linked in","this is to inform you","Your plan expired",Colors.pink),
            printmail("y","Amazon","informing","Your plan expired",Colors.pink),
            // printmail("Y","Yanshi",Colors.red),
            // printmail("A","Amazon",Colors.yellow),


          ],
        ),
      ),
    );
  }
}
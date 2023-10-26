import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    printinngmail()
    {
      for(int i =0; i<=10;i++)
      {
        return SizedBox(
          height: 90,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .20,
                child:const CircleAvatar(
                  maxRadius: 25,
                  child: Text("P",style: TextStyle(fontSize: 28),),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PhonePe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text("Sent ₹160 to PUSHPENDRA KUMAR",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                    Text("PhonePe Oct 22,2023 Paid To PUSHPEND...",style: TextStyle(fontSize: 13),),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("9:15 am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.star_border)),
                  ],
                ),
              )
            ],
          ),
        );
      }
    }
    // printinngmailbyvalue(label,sender,subject,mail)
    // {
    //   return SizedBox(
    //     height: 90,
    //     child: Row(
    //       children: [
    //         SizedBox(
    //           width: MediaQuery.of(context).size.width * .20,
    //           child:const CircleAvatar(
    //             maxRadius: 25,
    //             child: Text("P",style: TextStyle(fontSize: 28),),
    //           ),
    //         ),
    //         SizedBox(
    //           width: MediaQuery.of(context).size.width * .65,
    //           child: const Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text("PhonePe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
    //               Text("Sent ₹160 to PUSHPENDRA KUMAR",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
    //               Text("PhonePe Oct 22,2023 Paid To PUSHPEND...",style: TextStyle(fontSize: 13),),
    //             ],
    //           ),
    //         ),
    //         SizedBox(
    //           width: MediaQuery.of(context).size.width * .15,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               const Text("9:15 am",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
    //               IconButton(onPressed: (){}, icon: const Icon(Icons.star_border)),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   );
    // }
    return MaterialApp(
      title: "G-mail",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Primary"),
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.red,
          child: const Icon(Icons.create),
        ),
        body: ListView(
          children: [
            printinngmail(),
          ],
        ),
      ),
    );
  }
}


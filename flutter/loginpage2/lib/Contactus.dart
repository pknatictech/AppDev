import 'package:flutter/material.dart';
import 'Mywidgets.dart';
class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg3.jpg'),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              height: MediaQuery.of(context).size.height * .25,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10, right: 10, top: 80),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    about,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 580,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10, right: 10, top: 280),
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    mytextboxfcap("Full Name"),
                    const SizedBox(
                      height: 10,
                    ),
                    mytextbox("Email id"),
                    const SizedBox(
                      height: 10,
                    ),
                    mytextboxmull("Message", 5, 5),
                    const SizedBox(
                      height: 10,
                    ),
                    mybutton("Submit"),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        ),
        body: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .4,
            child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40,bottom: 30),
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/logo1.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 260),
            alignment: Alignment.topCenter,
            child: const Text("CREATE ACCOUNT",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
          Container(
            height: 500,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 300,
            ),
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "Mail-id",
                        hintStyle: const TextStyle(
                            fontSize: 20, color: Colors.white60),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(

                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "User Name",
                        hintStyle: const TextStyle(
                            fontSize: 20, color: Colors.white60),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(

                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "Password",
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white60,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo.shade500,
                      ),
                      onPressed: () {
                      },
                      child: const Text('Signup'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

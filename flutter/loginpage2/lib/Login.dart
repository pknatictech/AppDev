import 'package:flutter/material.dart';
// import 'Mywidgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
var id = "";
var user_name = "";
var password = "";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            height: MediaQuery.of(context).size.height * .3,
            child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/logo1.png'),
                      fit: BoxFit.fill,
                    )),
                  ),
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
                    onChanged: (value){
                      id = value;
                      user_name = value;
                    },
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "User Name / Mail-id",
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
                    height: 30,
                  ),
                  TextField(
                      onChanged: (value){
                        password = value;
                      },
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
                        Fluttertoast.showToast(msg: "Wrong Input");
                        if(id =="pknatic@gmail.com" || user_name == "pknatic" && password == "Pknatic@123")
                          {
                            Navigator.pushNamed(context, "Course");
                          }
                      },
                      child: const Text('LOGIN'),
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

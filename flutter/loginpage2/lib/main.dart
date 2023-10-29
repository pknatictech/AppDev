import 'package:flutter/material.dart';
import 'package:loginpage2/Course.dart';
import 'First.dart';
import 'Signup.dart';
import 'Login.dart';
import 'Contactus.dart';
void main() {
  var id = " ";
  var password = " ";
  var email = "";
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "First": (context) => const First(),
      "Contactus": (context) => const Contactus(),
      "Login": (context) => const  Login(),
      "Signup": (context) => const Signup(),
      "Course": (context) => const Course(),

    },
    initialRoute: "First",
  )
  );
}
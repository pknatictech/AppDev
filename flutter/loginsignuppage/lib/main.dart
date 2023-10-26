// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:loginsignuppage/Register.dart';
import 'package:loginsignuppage/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=> const Mylogin(),
      'register': (context)=> const Myregister(),
    },
  ));
}
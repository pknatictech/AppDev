import 'package:clonegmail/Mails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "mails": (context) => MyApp(),
    },
    initialRoute: "mails",
  ));
}
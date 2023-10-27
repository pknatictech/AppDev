import 'package:clonegmail/Mails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "mails": (context) => MyApp(),
    },
    initialRoute: "mails",
  ));
}
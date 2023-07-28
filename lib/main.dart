import 'package:flutter/material.dart';
import 'Home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // brightness:Brightness.light
          primarySwatch: Colors.amber),
      initialRoute: "/login",
      routes: {"/": (context) => Home(), "/login": (context) => login()},
    );
  }
}

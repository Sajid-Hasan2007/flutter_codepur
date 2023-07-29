import 'package:flutter/material.dart';
import 'Home.dart';
import 'login.dart';
import 'utils/routes.dart';

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
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        MyRoutes.HomeRoute: (context) => Home(),
        MyRoutes.LoginRoute: (context) => login(),
      },
    );
  }
}

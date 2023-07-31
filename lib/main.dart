import 'package:flutter/material.dart';
import 'Home.dart';
import 'login.dart';
import 'utils/routes.dart';
import 'widget/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.HomeRoute,
      routes: {
        MyRoutes.HomeRoute: (context) => Home(),
        MyRoutes.LoginRoute: (context) => login(),
      },
    );
  }
}

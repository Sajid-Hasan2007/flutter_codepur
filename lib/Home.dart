import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Container(
          child: Text(
            "Home Page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 2.0,
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

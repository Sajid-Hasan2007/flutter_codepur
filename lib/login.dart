import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    String text = "Sajid";
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: Container(
          child: Text("Hello ${text}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

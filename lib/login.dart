import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Image.asset("assets/images/login.png", fit: BoxFit.cover),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: "Username"),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () => {print("pressed!")},
                  child: Text("Login"),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(),
    );
  }
}

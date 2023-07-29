import 'package:flutter/material.dart';

import 'utils/routes.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome ${name}",
              textScaleFactor: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 40 : 150,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8)),
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}

import 'package:chat/component/userField.dart';
import 'package:flutter/material.dart';

import '../../component/backButton.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                //backbutton
                const Back(),
                const SizedBox(height: 45), //Text Description
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Hello, Welcome Back",
                        style: TextStyle(
                            fontFamily: "poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      child: Text(
                        "Happy to see you again, to use your account please login first.",
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50),
                //username TextField
                const Padding(
                  padding: EdgeInsets.fromLTRB(10,0,0,5),
                  child: Text(
                    "Username",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 15,
                    ),
                  ),
                ),
                UserFormField(
                  hintText: "username",
                  obscure: false,
                  controller: userController,
                  lableText: "username",
                ),

                //password TextField
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10,0,0,5),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 15,
                    ),
                  ),
                ),
                UserFormField(
                  hintText: "Password",
                  obscure: true,
                  controller: passwordController,
                  lableText: "password",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

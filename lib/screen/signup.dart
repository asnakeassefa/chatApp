import 'package:chat/component/userField.dart';
import 'package:flutter/material.dart';

import '../component/backButton.dart';
import '../component/button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final userController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  String username = "";
  String password = "";
  String email = "";
  String confirmPass ="";
  void getUsername(String name){
    username = name;
    print(username);
  }

  void getPassword(String pass){
    password = pass;
    print(password);
  }
  void getEmail(String userEmail){
    email = userEmail;
    print(email);
  }

  void getConpass(String Conpass){
    confirmPass = Conpass;
  }


  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Expanded(
            child: Form(
              key: _formkey,
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  const Row(children: [Back()]),
                  const SizedBox(height: 20),
                  const Text(
                    "Welcome To Chat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
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
                    lableText: "username",
                    controller: userController,
                    function: getUsername,
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                    child: Text(
                      "email",
                      style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 15,
                      ),
                    ),
                  ),
                  UserFormField(
                    hintText: "email",
                    obscure: false,
                    lableText: "email",
                    controller: emailController,
                    function: getEmail,
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                    child: Text(
                      "password",
                      style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 15,
                      ),
                    ),
                  ),
                  UserFormField(
                    hintText: "password",
                    obscure: true,
                    lableText: "password",
                    controller: passwordController,
                    function:getPassword,
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                    child: Text(
                      "confirm password",
                      style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 15,
                      ),
                    ),
                  ),
                  UserFormField(
                    hintText: "confirm Password",
                    obscure: true,
                    lableText: "confirm password",
                    controller: confirmController,
                    function: getConpass,
                  ),
                  const SizedBox(height: 20),
                  Button(
                    child: "SignUp",
                    todo:()=>{
                      if (_formkey.currentState!.validate()){
                        
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

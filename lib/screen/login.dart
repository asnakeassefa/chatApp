import 'package:chat/component/button.dart';
import 'package:chat/component/userField.dart';
import 'package:chat/screen/signup.dart';
import 'package:flutter/material.dart';
import '../component/backButton.dart';
import '../component/loginAlternative.dart';
import 'ChatHome.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  String username = "";
  String password= "";

  void getUsername(String name){
    username = name;
    print(username);
  }

  void getPassword(String pass){
    password = pass;
    print(password);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Expanded(
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                //backbutton
                const Row(children: [Back()]),
                // Header Text
                const SizedBox(height: 40), //Text Description
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "poppins",
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                //username TextField
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
                  controller: userController,
                  lableText: "username",
                  function: getUsername,
                ),

                //password TextField
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
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
                  function: getPassword,
                ),

                // forget password
                GestureDetector(
                  onTap: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          )
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 10,0, 0),
                          child: Text(
                            "signup",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => {},
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: Text(
                            "Forget password",
                            style: TextStyle(color: Colors.purple),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Login button
                const SizedBox(height: 40),
                // login button
                Button(
                    todo: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChatHome(),
                            ),
                          )
                        },
                    child: "Login"),
                const SizedBox(height: 40),
                // other alternatives
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black45,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Text('or Login with'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),
                const LoginAlternatives(),
                // social
              ],
            ),
          ),
        ),
      ),
    );
  }
}

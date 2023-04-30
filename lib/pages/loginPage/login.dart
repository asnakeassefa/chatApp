import 'package:chat/component/button.dart';
import 'package:chat/component/userField.dart';
import 'package:flutter/material.dart';
import '../../component/backButton.dart';
import '../../component/loginAlternative.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                //backbutton
                const Back(),
                const SizedBox(height: 40), //Text Description
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
                ),

                // forget password
                GestureDetector(
                  onTap: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 30, 0),
                        child: Text(
                          "Forget password",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                ),
                // Login button
                const SizedBox(height: 40),
                Button(todo: () => {}, child: "Login"),
                const SizedBox(height: 40),
                // other alternatives
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: const [
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
                ),

                const SizedBox(height: 40),
                const Padding(
                  padding:EdgeInsets.only(right: 30),
                  child: LoginAlternatives(),
                )
                // social
              ],
            ),
          ),
        ),
      ),
    );
  }
}

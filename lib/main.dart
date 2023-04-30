import 'package:chat/pages/loginPage/login.dart';
import 'package:chat/pages/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:chat/common/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      fontFamily: "poppins",
      buttonColor: Colors.deepPurpleAccent,
      primaryColor: Colors.black54,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home:const Login(),
    );
  }
}

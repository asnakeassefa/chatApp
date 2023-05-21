import 'package:chat/screen/ChatHome.dart';
import 'package:chat/screen/login.dart';
import 'package:chat/screen/splashScreen.dart';
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

    bool screenTheme = true;

    final darkTheme = ThemeData(
      fontFamily: "poppins",
      primaryColor: Colors.black,
      primarySwatch:Colors.yellow,
      brightness: Brightness.dark
    );

    final lightTheme = ThemeData(
      fontFamily: "poppins",
      primaryColor: Colors.white,
      // secondaryHeaderColor: Colors.black45,
      // Secondary:Colors.black45,
      primarySwatch: Colors.purple,
      brightness: Brightness.light
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: !screenTheme? darkTheme : lightTheme,
      home:const Splash(),
    );
  }
}

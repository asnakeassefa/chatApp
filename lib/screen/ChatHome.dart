import 'package:chat/component/backButton.dart';
import 'package:flutter/material.dart';

import '../component/SingleChat.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Column(
            children: const [
              SingleChat(),
              SizedBox(height: 20),
              SingleChat(),
              SizedBox(height: 20),
              SingleChat(),
              Back(),
            ],
          ),
        ),
      ),
    );
  }
}

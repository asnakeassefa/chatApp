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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: DefaultTabController(
            animationDuration: Duration(milliseconds: 50),
            initialIndex: 0,
            length: 3,
            child: Column(
              children: [
                TabBar(
                  
                  tabs: [
                    Tab(
                      text: "chats",
                    ),
                    Tab(
                      text: "Friends",
                    ),
                    Tab(text: "calls")
                  ],
                ),
                TabBarView(
                  children: [
                    Text("chats"),
                    Text('Friends'),
                    Text('calls'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

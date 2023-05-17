import 'package:chat/component/backButton.dart';
import 'package:chat/component/userField.dart';
import 'package:flutter/material.dart';

import '../component/SingleChat.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  // late TabController _tabController;
  // @override
  // void initState(){
  //   super.initState();
  //   _tabController = TabController(vsync: this ,length: 3);
  // }

//    @override
//  void dispose() {
//    _tabController.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserFormField(hintText: "Search here", obscure: false, lableText: "Search"),
                // SizedBox(height: 10),
                TabBar(
                  tabs: [
                    Tab(
                      child: Text('chats'),
                    ),
                    Tab(
                      child: Text('chats'),
                    ),
                    Tab(
                      child: Text('chats'),
                    )
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    Text("chats"),
                    Text('Friends'),
                    Text('calls'),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

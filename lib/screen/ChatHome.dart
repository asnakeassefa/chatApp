import 'package:chat/component/backButton.dart';
import 'package:chat/component/chatMessage.dart';
import 'package:chat/component/searchBar.dart';
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

  final searchcontroller = TextEditingController();
//    @override
//  void dispose() {
//    _tabController.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Searching(
                  controller: searchcontroller,
                ),
                // SizedBox(height: 10),
                const TabBar(
                  tabs: [
                    Tab(
                      child: Text('chats'),
                    ),
                    Tab(
                      child: Text('Friends'),
                    ),
                    Tab(
                      child: Text('calls'),
                    )
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    ListView(
                      children: const [
                        SizedBox(height: 20,),
                        Message(message: "hello my friend hello my friend hello my friend hello my friend hello my friend hello my friend",otherChat: false),
                        SizedBox(height: 20,),
                        Message(message: "hello my friend hello my friend hello my friend hello my friend hello my friend hello my friend",otherChat: true),
                      ],
                    ),
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

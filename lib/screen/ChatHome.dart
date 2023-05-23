import 'package:chat/common/userModel.dart';
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
  final searchcontroller = TextEditingController();
    static List users = [
      "Ashe",
      "Ase",
      "Dani",
      "Bisrat",
      "Dave",
    ];
  
    List displayList = List.from(users);
  @override
  Widget build(BuildContext context) {

    void newList(String value) {
      print(value);
      setState(
        () {
          displayList = users
              .where((element) =>
                  element.toLowerCase().contains(value.toLowerCase()))
              .toList();
        },
      );
    }

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
                  displayFun: newList,
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
                    ListView.builder(
                      itemCount: displayList.length,
                      itemBuilder: (context, index) {
                        return SingleChat(name: displayList.elementAt(index));
                      },
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

import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String message;
  final bool otherChat;
  const Message({super.key, required this.message,required this.otherChat});

  @override
  Widget build(BuildContext context) {
    return otherChat?friendsChat():ownChat();
  }

  Widget ownChat() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.purpleAccent,
      
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: Text(
            message,
          ),
        ),
      ),
    );
  }
  Widget friendsChat() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 100),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration:  BoxDecoration(
            border: Border.all(color: Colors.purple,width: 2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Text(
            message,
          ),
        ),
      ),
    );
  }
  

}

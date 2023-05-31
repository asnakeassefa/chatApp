import 'package:chat/screen/ChatHome.dart';
import 'package:chat/screen/chatScreen.dart';
import 'package:flutter/material.dart';

class SingleChat extends StatefulWidget {
  final String name;
  const SingleChat({super.key,required this.name});

  @override
  State<SingleChat> createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatRoom()))
      },
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.purple, width: 2.0),
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //profile photo
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/splash.png"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // Name and lastChat
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.name,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)
                    ),
                    Text(
                      'Hello, there how are you?',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            // message Num and time
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  '12:34',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.deepPurple,
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:chat/common/message.dart';
import 'package:chat/component/chatMessage.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final List<MessageModel> messages = [
    MessageModel(Text: "hello My dani", date: DateTime.now().subtract(const Duration(minutes: 40)), isSentBy: false),
    MessageModel(Text: "hello My bob", date: DateTime.now().subtract(const Duration(minutes: 60)), isSentBy: true),
    MessageModel(Text: "hello My friend", date: DateTime.now().subtract(const Duration(minutes: 60 * 30)), isSentBy: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
        child: Column(
          children: [
            Expanded(
              child: GroupedListView<MessageModel, DateTime>(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                elements: messages,
                reverse: true,
                order: GroupedListOrder.DESC,
                groupBy: (message) => DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day,
                ),
                groupHeaderBuilder: (MessageModel message) => const SizedBox(),
                itemBuilder: (context, MessageModel message) => Align(
                  alignment: message.isSentBy
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(message.Text),
                    ),
                  ),
                ),
              ),
            ),
            // MessageText(),
            Container(
              padding: const EdgeInsets.all(12),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "type your text here",
                ),
                onSubmitted: (text){
                  final message = MessageModel(Text: text, date: DateTime.now(), isSentBy: true);
                  setState(() {
                    messages.add(message);
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

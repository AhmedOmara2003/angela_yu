import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String messageText;
  final String messageSender;
  final bool isMe;

  const MessageBubble({super.key,
    required this.messageText,
    required this.messageSender,
    required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Column(
        crossAxisAlignment:
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            messageSender,
            style: const TextStyle(fontSize: 13.0),
          ),
          Material(
            elevation: 10.0,
            borderRadius: isMe
                ? const BorderRadiusDirectional.only(
              topStart: Radius.circular(10.0),
              bottomStart: Radius.circular(10.0),
              bottomEnd: Radius.circular(10.0),
            )
                : const BorderRadiusDirectional.only(
              topEnd: Radius.circular(10.0),
              bottomStart: Radius.circular(10.0),
              bottomEnd: Radius.circular(10.0),
            ),
            color: isMe ? Colors.blue : Colors.grey,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
              child: Text(
                messageText,
                style: TextStyle(color: isMe ? Colors.white:Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

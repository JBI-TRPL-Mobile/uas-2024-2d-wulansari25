import 'package:flutter/material.dart';
import '../models/message_model.dart';

class MessageCard  extends StatelessWidget {
  final Message message;

  const MessageCard({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            message.sender[0].toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          message.sender,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          message.message,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(
          "${message.timestamp.hour}:${message.timestamp.minute}",
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),
    );
  }
}
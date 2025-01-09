import 'package:flutter/material.dart';
import '../widgets/message_card.dart';
import '../models/message_model.dart';

class HomeScreen extends StatelessWidget{
  final List<Message> messages = [
    Message(
      id: 1, 
      sender: 'John', 
      message: 'Hi, how are you?', 
      timestamp: DateTime.now(),
    ),
    Message(
      id: 2, 
      sender: 'William', 
      message: 'Meeting at 3 PM?', 
      timestamp: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Message')),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return MessageCard(message: messages[index]);
        },
      ),
    );
  }
}
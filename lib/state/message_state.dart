import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../services/data_service.dart';

class MessageState extends ChangeNotifier {
  List<Message> _messages = [
    Message(
      id: 1, 
      sender: 'Alice', 
      message: 'Hi, how are you?', 
      timestamp: DateTime.now()
      ),
    Message(
      id: 2, 
      sender: 'Bob', 
      message: 'Meeting at 3 PM?', 
      timestamp: DateTime.now()
      ),
  ];

  List<Message> get messages => _messages;

  void addMessage(Message newMessage) {
    _messages.add(newMessage);
    notifyListeners(); 
  }
}

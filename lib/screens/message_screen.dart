import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/message_state.dart';
import '../widgets/message_card.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ambil MessageState dari Provider
    final messageState = Provider.of<MessageState>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Messages')),
      body: ListView.builder(
        itemCount: messageState.messages.length,
        itemBuilder: (context, index) {
          return MessageCard(message: messageState.messages[index]);
        },
      ),
    );
  }
}

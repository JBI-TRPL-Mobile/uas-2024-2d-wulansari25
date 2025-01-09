import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './state/message_state.dart';
import './screens/message_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MessageState()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Message App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessageScreen(),
    )
  }
}
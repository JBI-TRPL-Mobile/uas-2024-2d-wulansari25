import 'package:flutter/material.dart';
import 'screens/message_screen.dart'; // Pastikan path ini sesuai dengan struktur folder Anda

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MessageScreen(), // The MessageScreen widget will manage its own state now
    );
  }
}

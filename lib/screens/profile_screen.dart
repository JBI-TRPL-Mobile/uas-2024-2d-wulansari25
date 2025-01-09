import 'package:flutter/material.dart';
import '../widgets/profile_option.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profil')),
      body: Center(
        child: ProfileOption(
          name: 'William', 
          email: 'william@gmail.com',
          profilePicture: 'assets/images/profile_pic.png',
          ),
      ),
    );
  }
}
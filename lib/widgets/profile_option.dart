import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final String name;
  final String email;
  final String profilePicture;

  const ProfileOption({
    Key? key,
    required this.name,
    required this.email,
    required this.profilePicture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(profilePicture), // Path gambar dari assets
        ),
        SizedBox(height: 16),
        Text(
          name,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          email,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

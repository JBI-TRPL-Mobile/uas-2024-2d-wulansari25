import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/user_model.dart';

class DataService {
  static Future<User> getUser() async {
    final String response = await rootBundle.loadString('data/datauser.json');
    final Map<String, dynamic> data = json.decode(response);
    return User.fromJson(data);
  }
}
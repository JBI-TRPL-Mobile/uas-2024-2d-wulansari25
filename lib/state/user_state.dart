import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/data_service.dart';

class UserState  with ChangeNotifier{
  User? _user;

  User? get user => _user;

  Future<void> loadUser() async {
    _user = await DataService.getUser();
    notifyListeners();
  }
}
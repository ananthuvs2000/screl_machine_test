
import 'package:flutter/material.dart';
import 'package:testapp/model/list_model.dart';
import 'package:testapp/services/list.dart';

class UserProvider with ChangeNotifier {
  
  List<Person> _users = [];

  // Fetching all employees
  Future<void> fetchPersons() async {
    final dataProvider = UserDataService();
    _users = await dataProvider.fetchUsers();
    notifyListeners();
  }

  List<Person> get userList => _users;
}

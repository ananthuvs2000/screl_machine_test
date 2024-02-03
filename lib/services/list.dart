import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/model/list_model.dart';
import 'package:testapp/services/endpoint.dart';

class UserDataService extends ChangeNotifier {
  Future<List<Person>> fetchUsers() async {
    final response = await http.get(Uri.parse(apiEndpoint));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);

      return jsonData
          .map(
            (item) => Person(
                body: item['body'],
                title: item['title'],
                userId: item[123],
                id: item[1]),
          )
          .toList();
    } else {
      throw Exception('Failed to fetch users');
    }
  }
}

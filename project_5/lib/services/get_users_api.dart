import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_5/data/global_data.dart';
import 'package:project_5/main.dart';
import 'package:project_5/models/error_model.dart';
import 'package:project_5/models/users_model.dart';

Future getUsers() async {
  final url = Uri.parse("$link/user/get/users");
  final response =
      await http.get(url, headers: {"content-Type": "application/json", "token": pref.getToken()});

  print("gggg");
  if (response.statusCode >= 200 && response.statusCode < 300) {
    print(json.decode(response.body));

    return UsersModel.fromJson(json.decode(response.body));
  } else {
    return ErrorModel.fromJson(json.decode(response.body));
  }
}

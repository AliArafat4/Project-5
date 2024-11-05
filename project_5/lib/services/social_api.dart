import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_5/data/global_data.dart';
import 'package:project_5/main.dart';
import 'package:project_5/models/error_model.dart';
import 'package:project_5/models/social_model.dart';

Future getSocialData() async {
  final url = Uri.parse("$link/user/get/social");

  final response =
      await http.get(url, headers: {"content-Type": "application/json", "token": pref.getToken()});

  if (response.statusCode >= 200 && response.statusCode < 300) {
    return SocialModel.fromJson(json.decode(response.body));
  } else if (response.statusCode >= 400) {
    final err = ErrorModel.fromJson(json.decode(response.body));
    return err.msg;
  } else {
    final err = ErrorModel.fromJson(json.decode(response.body));
    return err.msg;
  }
}

Future<String> addSocial({
  required String userName,
  required String social,
}) async {
  final data = {"user_name": userName, "social": social};
  final url = Uri.parse("$link/user/add/social");

  final response = await http.post(url,
      body: jsonEncode(data),
      headers: {"content-Type": "application/json", "token": pref.getToken()});

  if (response.statusCode >= 200 && response.statusCode < 300) {
    return response.body;
  } else if (response.statusCode >= 400) {
    final err = ErrorModel.fromJson(json.decode(response.body));
    return err.msg;
  } else {
    final err = ErrorModel.fromJson(json.decode(response.body));
    return err.msg;
  }
}

Future deleteSocial({required socialId}) async {
  final url = Uri.parse("$link/user/delete/social");
  final data = {"id": socialId.toString()};
  final response = await http.delete(url,
      headers: {"content-Type": "application/json", "token": pref.getToken()},
      body: jsonEncode(data));
  if (response.statusCode >= 200 && response.statusCode < 300) {
    return "Account Deleted";
  } else {
    return ErrorModel.fromJson(json.decode(response.body));
  }
}

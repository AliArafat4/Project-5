import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_5/data/global_data.dart';
import 'package:project_5/main.dart';
import 'package:project_5/models/error_model.dart';
import 'package:project_5/models/skills_model.dart';

Future getSkillsData() async {
  final url = Uri.parse("$link/user/get/skills");

  final response =
      await http.get(url, headers: {"content-Type": "application/json", "token": pref.getToken()});

  if (response.statusCode >= 200 && response.statusCode < 300) {
    return SkillsModel.fromJson(json.decode(response.body));
  } else if (response.statusCode >= 400) {
    final err = ErrorModel.fromJson(json.decode(response.body));
    return err.msg;
  } else {
    final err = ErrorModel.fromJson(json.decode(response.body));
    return err.msg;
  }
}

Future<String> addSkills({required String skill}) async {
  final data = {
    "skill": skill,
  };
  final url = Uri.parse("$link/user/add/skills");

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

Future deleteSkill({required int id}) async {
  final data = {
    "id": id.toString(),
  };
  final url = Uri.parse("$link/user/delete/skills");

  final response = await http.delete(url,
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

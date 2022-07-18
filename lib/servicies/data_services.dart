import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/course_model.dart';

class DataServicesies {
  String baseUrl = "http://localhost:8080/";

  static Future<List<Course>> GetCourses() async {
    Uri apiUrl = Uri.parse("http://10.0.2.2:8080/getCourses");
    http.Response res = await http.get(apiUrl);
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        return list.map((e) => Course.formJson(e)).toList();
      } else {
        print(res.statusCode);
        return <Course>[];
      }
    } catch (e) {
      print(e);
      return <Course>[];
    }
  }
}

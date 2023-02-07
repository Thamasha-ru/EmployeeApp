import 'dart:convert';


import 'package:http/http.dart' as http;

import '../config.dart';
import '../data/department.dart';

class DepartmentService {
  static Future<List<Department>?> getDepartments() async {
    final response = await http.get(
      Uri.parse("${Config.BACKEND_URL}api/v1.0/Departments"),
      headers: {"apiToken": "?D(G+KbPeSgVkYp3s6v9y\$B&E)H@McQf"},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body).map<Department>((data) {
        return Department.fromJson(data);
      }).toList();
    }
  }
}

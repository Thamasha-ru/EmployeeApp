import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config.dart';
import '../data/employee.dart';

class addEmployeeService {
  static Future<List<Employee>?> addEmployees() async {
    final response = await http.get(
      Uri.parse("${Config.BACKEND_URL}api/v1.0/Employees"),
      headers: {"apiToken": "?D(G+KbPeSgVkYp3s6v9y\$B&E)H@McQf"},
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body).map<Employee>((data) {
        return Employee.fromJson(data);
      }).toList();
    }
  }

  static Future<Employee?> postEmployee() async {
    final response = await http.post(
      Uri.parse("${Config.BACKEND_URL}/api/v1.0/Employee/2"),
      headers: {"apiToken": "?D(G+KbPeSgVkYp3s6v9y\$B&E)H@McQf"},
    );

    if (response.statusCode == 200) {
      return Employee.fromJson(jsonDecode(response.body));
    }
  }
}

import 'package:flutter/material.dart';

import '../data/employee.dart';
import '../services/employee_service.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      body: FutureBuilder<List<Employee>?>(
          future: EmployeeService.getEmployees(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error!'),
              );
            } else if (snapshot.hasData) {
              List<Employee>? employees = snapshot.data;
              return ListView.builder(
                itemCount: employees?.length,
                itemBuilder: (context, index) {
                  Employee employee = employees![index];
                  return ListTile(
                      title: Text(
                    employee.empName,
                  ));
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}


import 'package:flutter/material.dart';

import '../data/employee.dart';
import '../services/employee_service.dart';

class SingleEmployee extends StatelessWidget {
  const SingleEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Employee')),
      body: FutureBuilder<Employee?>(
        future: EmployeeService.getEmployee(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            Employee? employee = snapshot.data;
            print(snapshot.data);
            return Column(
              children: [Text('')],
            );
          }
        },
      ),
    );
  }
}

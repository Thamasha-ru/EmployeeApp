import 'package:flutter/material.dart';
import '../data/department.dart';
import '../services/department_service.dart';

class DepartmentList extends StatelessWidget {
  const DepartmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Department'),
      ),
      body: FutureBuilder<List<Department>?>(
          future: DepartmentService.getDepartments(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('Error!'),
              );
            } else if (snapshot.hasData) {
              List<Department>? departments = snapshot.data;
              return ListView.builder(
                itemCount: departments!.length,
                itemBuilder: (context, index) {
                  Department department = departments[index];
                  return ListTile(
                    title: Text(
                      department.departmentName,
                    ),
                  );
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

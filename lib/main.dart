import 'package:flutter/material.dart';
import 'package:mypos_employee_app/screens/start_screen.dart';
import 'screens/employee_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      //home: const EmployeeList(),
      //home: DepartmentList()
      home: Srart(),
    );
  }
}

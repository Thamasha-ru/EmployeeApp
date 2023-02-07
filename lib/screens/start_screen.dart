import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'add_employee.dart';
import 'department_list.dart';
import 'employee_list.dart';

class Srart extends StatefulWidget {
  const Srart({super.key});

  @override
  State<Srart> createState() => _SrartState();
}

class _SrartState extends State<Srart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Getting Start"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/employee.png"),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.yellowAccent)))),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EmployeeList())),
              child: const Text("Employee   List"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.yellowAccent)))),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DepartmentList())),
              child: const Text("Department List"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: Colors.yellowAccent)))),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddEmployee())),
              child: const Text("Add an Employee"),
            ),
            const SizedBox(
              height: 20,
            ),

            // ElevatedButton(
            //   onPressed: () => Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => EditEmployee())),
            //   child: const Text("Edit Employee"),
            // ),
          ],
        ),
      ),
    );
  }
}

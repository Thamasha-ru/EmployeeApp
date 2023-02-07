import 'package:flutter/material.dart';

import '../config.dart';

class AddEmployee extends StatefulWidget {
  const AddEmployee({Key? key}) : super(key: key);

  @override
  State<AddEmployee> createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerIsActive = TextEditingController();
  TextEditingController _controllerAddress = TextEditingController();
  TextEditingController _controllerDateOfJoin = TextEditingController();
  TextEditingController _controllerDateOfBirth = TextEditingController();
  TextEditingController _controllerBasicSalary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add an Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Add name'),
                controller: _controllerName,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Employee is Active or not'),
                controller: _controllerIsActive,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Employee Address'),
                controller: _controllerAddress,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Date of Join'),
                controller: _controllerDateOfJoin,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Date of Birth'),
                controller: _controllerDateOfJoin,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Basic Salary'),
                controller: _controllerBasicSalary,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.yellowAccent)))),
                  onPressed: () async {
                    Map<String, String> dataToUpdate = {
                      'name': _controllerName.text,
                      'empAddress': _controllerAddress.text,
                      'dateOfjoin': _controllerDateOfJoin.text,
                      'dateOfBirth': _controllerDateOfBirth.text,
                      'isActive': _controllerIsActive.text,
                      'basicSalary': _controllerBasicSalary.text
                    };

                    bool status = await Config().add(dataToUpdate);

                    if (status) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Employee added')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Failed to add the Employee')));
                    }
                  },
                  child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class EditEmployee extends StatefulWidget {
  EditEmployee(this.employee, Set set, {Key? key}) : super(key: key);
  Map employee;

  @override
  State<EditEmployee> createState() => _EditEmployeeState();
}

class _EditEmployeeState extends State<EditEmployee> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerIsActive = TextEditingController();

  initState() {
    super.initState();
    _controllerName.text = widget.employee['name'];
    _controllerIsActive.text = widget.employee['isActive'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Employee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _controllerName,
              ),
              TextFormField(
                controller: _controllerIsActive,
                maxLines: 5,
              ),
              ElevatedButton(
                  onPressed: () async {
                    Map<String, String> dataToUpdate = {
                      'name': _controllerName.text,
                      'isActive': _controllerIsActive.text,
                    };

                    // bool status = await HTTPHelper()
                    //     .updateItem(dataToUpdate, widget.employee['id'].toString());

                    // if (status) {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(content: Text('Employee updated')));
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //       content: Text('Failed to update the employee')));
                    // }
                  },
                  child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

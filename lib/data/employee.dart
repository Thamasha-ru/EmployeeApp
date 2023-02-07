class Employee {
  Employee({
    required this.empNo,
    required this.empName,
    required this.empAddressLine1,
    required this.empAddressLine2,
    required this.empAddressLine3,
    required this.departmentCode,
    required this.dateOfJoin,
    required this.dateOfBirth,
    required this.basicSalary,
    required this.isActive,
  });

  String empNo;
  String empName;
  String empAddressLine1;
  String empAddressLine2;
  String empAddressLine3;
  String departmentCode;
  DateTime dateOfJoin;
  DateTime dateOfBirth;
  int basicSalary;
  bool isActive;

  factory Employee.fromJson(Map<String, dynamic> data) => Employee(
        empNo: data["empNo"],
        empName: data["empName"],
        empAddressLine1: data["empAddressLine1"],
        empAddressLine2: data["empAddressLine2"],
        empAddressLine3: data["empAddressLine3"],
        departmentCode: data["departmentCode"],
        dateOfJoin: DateTime.parse(data["dateOfJoin"]),
        dateOfBirth: DateTime.parse(data["dateOfBirth"]),
        basicSalary: data["basicSalary"],
        isActive: data["isActive"],
      );
}

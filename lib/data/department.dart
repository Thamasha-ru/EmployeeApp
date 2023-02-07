class Department {
  Department(
      {required this.departmentCode,
      required this.departmentName,
      required this.isActive});

  String departmentCode;
  String departmentName;
  bool isActive;

  factory Department.fromJson(Map<String, dynamic> data) => Department(
        departmentCode: data["departmentCode"],
        departmentName: data["departmentName"],
        isActive: data["isActive"],
      );
}

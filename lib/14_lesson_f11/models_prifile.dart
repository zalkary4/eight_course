class Student {
  final int id;
  final String name;
  final String lastName;
  final String email;
  final int? gender;
  final String? jeri;
  int group;
  String phone;
  int? age;
  String? adress;
  bool? marriage;

  Student({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    this.gender,
    this.jeri,
    required this.group,
    required this.phone,
    this.age,
    this.adress,
    this.marriage,
  });
}

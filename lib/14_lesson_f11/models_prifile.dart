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

final mayrambek = Student(
    id: 1,
    name: 'Mayrambek',
    lastName: 'Iskakov',
    email: 'may@gmail.com',
    group: 8,
    phone: '+996502565732',
    adress: 'Bishkek',
    marriage: true,
    jeri: 'Issyk Kol');

final meerim = Student(
  id: 2,
  name: 'Meerim',
  lastName: 'Akmatova',
  email: 'meerim@gmail.com',
  group: 8,
  phone: '+996774856888',
  jeri: 'Issyk Kol',
  gender: 1,
);

final meerim = Student(
  id: 2,
  name: 'Meerim',
  lastName: 'Akmatova',
  email: 'meerim@gmail.com',
  group: 8,
  phone: '+996774856888',
  jeri: 'Issyk Kol',
  gender: 1,
);

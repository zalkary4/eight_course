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

    /// gender is 1 female, 2=male;
    this.gender,
    this.jeri,
    required this.group,
    required this.phone,
    this.age,
    this.adress,

    /// marriage is true = Jenat, false=Nejenat
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

final adilbek = Student(
  id: 3,
  name: 'Adilbek',
  lastName: 'Kurmanbek uulu',
  email: 'adilbek@gmail.com',
  group: 8,
  phone: '+996999291210',
  jeri: 'Jumgal',
  gender: 2,
  marriage: true,
);

final altynbek = Student(
  id: 4,
  name: 'Altynbek',
  lastName: 'Bekmoldo uulu',
  email: 'altynbek@gmail.com',
  group: 8,
  phone: '+9261272790',
  jeri: 'Aksy',
  gender: 2,
  marriage: true,
);

final arsen = Student(
  id: 5,
  name: 'Arsen',
  lastName: 'Ardakbek uulu',
  email: 'arsen@gmail.com',
  group: 8,
  phone: '+996999771661',
  gender: 2,
  marriage: false,
);

final bakyt = Student(
  id: 6,
  name: 'Bakyt',
  lastName: 'Kurmanaliev',
  email: 'bakyt@gmail.com',
  group: 8,
  phone: '+996705365239',
  marriage: true,
);

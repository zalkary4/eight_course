// ignore: unused_import
import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

import 'models.dart';

final students = <Student>[
  mayrambek,
  meerim,
  adilbek,
  altynbek,
  arsen,
  bakyt,
  talant,
];
void main(List<String> arguments) {
  controlEmailPhone('phone', 'email');
}

void controlEmailPhone(String phone, String email) {
  for (final student in students) {
    // print('student.name');
    if (phone == student.phone && email == student.email) {
      print('Welcome');
    } else {
      print('Error');
    }
  }
}

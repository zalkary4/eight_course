import 'dart:developer';

import 'package:eight_course/15_lesson_f12/models_prifile.dart';
import 'package:eight_course/15_lesson_f12/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final students = <Student>[
  mayrambek,
  meerim,
  adilbek,
  altynbek,
  arsen,
  bakyt,
  talant
];
const snackBar = SnackBar(content: Text('Wow? something is wrong'));

class LoginPageF12 extends StatefulWidget {
  const LoginPageF12({Key? key}) : super(key: key);

  @override
  State<LoginPageF12> createState() => _LoginPageF12State();
}

class _LoginPageF12State extends State<LoginPageF12> {
  bool isActive = false;
  String? _email;
  String? _phone;

  void _activate() {
    if (_phone != null && _email != null) {
      if (_phone!.isEmpty || _email!.isEmpty) {
        isActive = false;
      } else {
        isActive = true;
      }
    }
    setState(() {});
  }

  // void controlEmailphone(String phone, String email) {
  //   int index = 0;
  //   for (final student in students) {
  //     if (phone == student.phone && email == student.email) {
  // Navigator.push(context,
  //     MaterialPageRoute(builder: (context) => HomePageF12(student)));
  //       break;
  //     } else {
  //       if (index == students.length) {
  //         // ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //       } else {
  //         continue;
  //       }
  //     }
  //   }
  // }

  // void controlEmailPhone(String phone, String email) {
  //   for (var i = 0; i < students.length; i++) {
  //     if (phone == students[i].phone && email == students[i].email) {
  //       print('Weolcome ${students[i].name}');
  //     } else {
  //       if (i == students.length - 1) {
  //         print('Wow, something is wrong');
  //         break;
  //       }
  //     }
  //   }
  // }

  void controlEmailPhone(String phone, String email) {
    for (int i = 0; i <= students.length; i++) {
      if (phone == students[i].phone && email == students[i].email) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => HomePageF12(students[i])));
      } else {
        if (i == students.length - 1) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          break;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 98, 67),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Task - 04',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/yondu.jpg')),
              const SizedBox(height: 30),
              Text(
                'Yondu Udonta',
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                'Flutter deleveloper',
                style: GoogleFonts.dosis(
                    color: const Color.fromARGB(255, 197, 212, 205),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              const Divider(
                thickness: 2,
                color: Color.fromARGB(255, 197, 212, 205),
                indent: 185,
                endIndent: 185,
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    onChanged: (String? phone) {
                      _phone = phone;
                      _activate();
                    },
                    style: const TextStyle(
                      color: Color.fromARGB(255, 66, 98, 67),
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'phone number',
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Icon(
                        Icons.phone,
                        size: 25,
                        color: Color.fromARGB(255, 6, 102, 80),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              /// decor
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    onChanged: (String? email) {
                      _email = email;
                      _activate();
                    },
                    style: const TextStyle(
                      color: Color.fromARGB(255, 66, 98, 67),
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'e-mail address',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color.fromARGB(255, 66, 98, 67),
                        size: 25,
                      ),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: isActive
                    ? () {
                        if (_phone != null && _email != null) {
                          controlEmailPhone(_phone!, _email!);
                        }
                      }
                    : null,
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.white,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

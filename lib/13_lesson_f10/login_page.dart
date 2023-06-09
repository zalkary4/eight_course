import 'package:eight_course/13_lesson_f10/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageF10 extends StatefulWidget {
  const LoginPageF10({Key? key}) : super(key: key);

  @override
  State<LoginPageF10> createState() => _LoginPageF10State();
}

class _LoginPageF10State extends State<LoginPageF10> {
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
    print(_email);
    print(_phone);
    setState(() {});
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
                      hintText: 'Phone number',
                      prefixIcon: Icon(
                        Icons.phone,
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageF10(),
                          ),
                        );
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

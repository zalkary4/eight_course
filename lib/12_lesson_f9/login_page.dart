import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageF9 extends StatelessWidget {
  const LoginPageF9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 66, 98, 67),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Тапшырма - 04',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/yondu.jpg')),
              SizedBox(height: 30),
              Text(
                'Yondu Udonta',
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              Text(
                'Flutter DEVELOPER',
                style: GoogleFonts.dosis(
                    color: Color.fromARGB(255, 197, 212, 205),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              const Divider(
                thickness: 1,
                color: Color.fromARGB(255, 197, 212, 205),
                indent: 185,
                endIndent: 185,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    initialValue: "+996 777 111 222",
                    style: TextStyle(
                      color: Color.fromARGB(255, 66, 98, 67),
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
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
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    initialValue: "example@gmail.com",
                    style: TextStyle(
                      color: Color.fromARGB(255, 66, 98, 67),
                      fontSize: 20,
                    ),
                    decoration: const InputDecoration(
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
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
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

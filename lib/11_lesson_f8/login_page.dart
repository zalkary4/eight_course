import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageF8 extends StatelessWidget {
  const LoginPageF8({Key? key}) : super(key: key);

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
      body: Column(
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
          TextField(),
        ],
      ),
    );
  }
}

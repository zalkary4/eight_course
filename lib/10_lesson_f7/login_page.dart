import 'package:eight_course/10_lesson_f7/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String login = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (log) {
                  login = log;
                  // print(login);
                  // print(password);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Login',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (pass) {
                  password = pass;
                  // print(login);
                  // print(password);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (login == 'eagle@gmail.com' && password == 'kurs8') {
                  // print('Tuura');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                } else {
                  // print('Kata');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Login tuura emes'),
                    ),
                  );
                }
              },
              child: const Text('Inputt'),
            ),
          ],
        ),
      ),
    );
  }
}

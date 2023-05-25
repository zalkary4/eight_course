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
                  print('Tuura');
                } else {
                  print('Kata');
                }
              },
              child: Text('Input'),
            ),
            FlutterLogo(
              size: 60,
            )
          ],
        ),
      ),
    );
  }
}

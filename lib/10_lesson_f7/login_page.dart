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
                onChanged: (val) {
                  login = val;
                  print(val);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Login',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (log) {
                  password = log;
                  print(log);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
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

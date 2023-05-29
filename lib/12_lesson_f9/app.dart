import 'package:eight_course/11_lesson_f8/home_page.dart';
import 'package:eight_course/11_lesson_f8/login_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: LoginPageF8(),
    );
  }
}

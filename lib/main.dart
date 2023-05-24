import 'package:eight_course/10_lesson_f7/login_page.dart';
import 'package:eight_course/2_lesson_user_page/user_page.dart';
import 'package:flutter/material.dart';

import '5_lesson_counter_page/counter_page_lesson_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const LoginPage(),
    );
  }
}

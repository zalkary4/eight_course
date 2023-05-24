import 'package:flutter/material.dart';

class CounterPageLesson99 extends StatelessWidget {
  const CounterPageLesson99({Key? key, required this.san}) : super(key: key);
  final int san;

//   @override
//   _CounterPageLesson99State createState() => _CounterPageLesson99State();
// }

// class _CounterPageLesson99State extends State<CounterPageLesson99> {
  @override
  Widget build(BuildContext context) {
    // log(san.toString());
    return Scaffold(
      appBar: AppBar(title: const Text('Counter 2')),
      body: Center(
        child: Text('$san', style: const TextStyle(fontSize: 70)),
      ),
    );
  }
}

import 'package:eight_course/5_lesson_counter_page/secon_counter_page.dart';
import 'package:flutter/material.dart';

class CounterPageLesson9 extends StatefulWidget {
  const CounterPageLesson9({Key? key}) : super(key: key);

  @override
  _CounterPageLesson9State createState() => _CounterPageLesson9State();
}

class _CounterPageLesson9State extends State<CounterPageLesson9> {
  int san = 0;
  void koshuu() {
    san++;
    setState(() {});
    print(san);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter 1')),
      body: Column(
        children: [
          SizedBox(height: 50),
          Text('$san', style: const TextStyle(fontSize: 70)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: koshuu,
                child: Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  san--;
                  print(san);
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CounterPageLesson99(san: san),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

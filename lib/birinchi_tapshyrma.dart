import 'package:flutter/material.dart';

class BirinchiTapshyrmaCounterPage extends StatefulWidget {
  const BirinchiTapshyrmaCounterPage({super.key, required this.title});

  final String title;

  @override
  State<BirinchiTapshyrmaCounterPage> createState() =>
      _BirinchiTapshyrmaCounterPageState();
}

class _BirinchiTapshyrmaCounterPageState
    extends State<BirinchiTapshyrmaCounterPage> {
  int _counter = 0;

  void koshuu() {
    setState(() {
      _counter++;
    });
    print(_counter);
  }

  void kemituu() {
    setState(() {
      _counter--;
    });
    print(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text('App Title'),
        actions: [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 90),
            const FlutterLogo(size: 150),
            const Text('This is the first task'),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
                child: Text(
                  '$_counter',
                  style: const TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: koshuu,
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: kemituu,
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

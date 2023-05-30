import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageF9 extends StatelessWidget {
  const HomePageF9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC106),
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 25.0,
        backgroundColor: Color(0xffFEC106),
        title: const Text(
          'Home work - 4',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('I\'m Rich'),
              ],
            ),
            SvgPicture.asset(
              'assets/icons/diamond.svg',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:eight_course/15_lesson_f12/models_prifile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageF12 extends StatelessWidget {
  const HomePageF12(this.student, {Key? key}) : super(key: key);
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC106),
      appBar: AppBar(
        bottom: PreferredSize(
          child: Container(color: Colors.redAccent, height: 2.0),
          preferredSize: const Size.fromHeight(4.0),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Color(0xff751e85)),
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: 25.0,
        backgroundColor: const Color(0xffFEC106),
        title: Text(
          student.name,
          style: const TextStyle(
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
                Text(
                  'I\'m Rich',
                  style: GoogleFonts.sofia(
                    color: Colors.red,
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    // height: 1.0
                  ),
                ),
                Text(
                  'I\'m Rich',
                  style: GoogleFonts.pacifico(
                    color: Colors.red,
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                  ),
                ),
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

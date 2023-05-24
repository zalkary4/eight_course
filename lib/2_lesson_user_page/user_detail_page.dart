import 'package:eight_course/2_lesson_user_page/user_model.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    // print(user.atyJonu);
    return Scaffold(
      appBar: AppBar(
        title: Text(user.atyJonu),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user.profileSurot),
          ),
          Text(
            user.kesibi,
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple,
            ),
          ),
          Text(
            '${user.jash}',
            // user.jash.toString(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(user.tajryybaJolu),
          ),
        ],
      ),
    );
  }
}

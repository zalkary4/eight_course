import 'package:eight_course/2_lesson_user_page/user_model.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    print(user.atyJonu);
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(''),
          ),
          Text(
            'Whale',
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepPurple,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail Page'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(''),
          ),
        ],
      ),
    );
  }
}

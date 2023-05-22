import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users Page'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Aydar Baktybek uulu'),
            subtitle: Text('Flutter Developer'),
          )
        ],
      ),
    );
  }
}

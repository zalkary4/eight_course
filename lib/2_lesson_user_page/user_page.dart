import 'package:flutter/material.dart';

final List users = [];

class User {
  final String atyJonu;
  final String kesibi;
  final int jash;
  final String profileSurot;
  final String tajryybaJolu;

  User({
    required this.atyJonu,
    required this.kesibi,
    required this.jash,
    required this.profileSurot,
    required this.tajryybaJolu,
  });
}

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
      body: const Column(
        children: [
          ListTile(
            title: Text('Aydar Baktybek uulu'),
            subtitle: Text('Flutter Developer'),
            // leading: CircleAvatar(
            //     radius: 20,
            //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
            leading: FlutterLogo(size: 40),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Aydar Baktybek uulu'),
            subtitle: Text('Flutter Developer'),
            // leading: CircleAvatar(
            //     radius: 20,
            //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
            leading: FlutterLogo(size: 40),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Aydar Baktybek uulu'),
            subtitle: Text('Flutter Developer'),
            // leading: CircleAvatar(
            //     radius: 20,
            //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
            leading: FlutterLogo(size: 40),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            title: Text('Aydar Baktybek uulu'),
            subtitle: Text('Flutter Developer'),
            // leading: CircleAvatar(
            //     radius: 20,
            //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
            leading: FlutterLogo(size: 40),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

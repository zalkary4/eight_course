import 'package:flutter/material.dart';

const String constText =
    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.';

final List<User> users = [
  User(
    atyJonu: 'Aydar',
    kesibi: 'Flutter developer',
    jash: 20,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Adilbek',
    kesibi: 'Flutter developer',
    jash: 23,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Aydar',
    kesibi: 'Flutter developer',
    jash: 20,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Adilbek',
    kesibi: 'Flutter developer',
    jash: 23,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Aydar',
    kesibi: 'Flutter developer',
    jash: 20,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Adilbek',
    kesibi: 'Flutter developer',
    jash: 23,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Aydar',
    kesibi: 'Flutter developer',
    jash: 20,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Adilbek',
    kesibi: 'Flutter developer',
    jash: 23,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Aydar',
    kesibi: 'Flutter developer',
    jash: 20,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Adilbek',
    kesibi: 'Flutter developer',
    jash: 23,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Meerim',
    kesibi: 'Flutter developer',
    jash: 19,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Albina',
    kesibi: 'Flutter developer',
    jash: 23,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Mayrambek',
    kesibi: 'Flutter developer',
    jash: 43,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Altynbek',
    kesibi: 'Flutter developer',
    jash: 32,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
  User(
    atyJonu: 'Jamal',
    kesibi: 'Flutter developer',
    jash: 27,
    profileSurot: 'FlutterLogo(size: 40)',
    tajryybaJolu: constText,
  ),
];

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
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemBuilder: ((context, index) {
          final user = users[index];
          return ListTile(
            title: Text(user.atyJonu),
            subtitle: Text('${user.kesibi} ${user.jash} jashta'),
            // leading: CircleAvatar(
            //     radius: 20,
            //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
            leading: FlutterLogo(size: 40),
            trailing: Icon(Icons.chevron_right),
          );
        }),
        itemCount: users.length,
      ),
      // body: const Column(
      //   children: [
      //     ListTile(
      //       title: Text('Aydar Baktybek uulu'),
      //       subtitle: Text('Flutter Developer'),
      //       // leading: CircleAvatar(
      //       //     radius: 20,
      //       //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
      //       leading: FlutterLogo(size: 40),
      //       trailing: Icon(Icons.chevron_right),
      //     ),
      //     ListTile(
      //       title: Text('Aydar Baktybek uulu'),
      //       subtitle: Text('Flutter Developer'),
      //       // leading: CircleAvatar(
      //       //     radius: 20,
      //       //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
      //       leading: FlutterLogo(size: 40),
      //       trailing: Icon(Icons.chevron_right),
      //     ),
      //     ListTile(
      //       title: Text('Aydar Baktybek uulu'),
      //       subtitle: Text('Flutter Developer'),
      //       // leading: CircleAvatar(
      //       //     radius: 20,
      //       //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
      //       leading: FlutterLogo(size: 40),
      //       trailing: Icon(Icons.chevron_right),
      //     ),
      //     ListTile(
      //       title: Text('Aydar Baktybek uulu'),
      //       subtitle: Text('Flutter Developer'),
      //       // leading: CircleAvatar(
      //       //     radius: 20,
      //       //     backgroundImage: NetworkImage('https://picsum.photos/200/300')),
      //       leading: FlutterLogo(size: 40),
      //       trailing: Icon(Icons.chevron_right),
      //     ),
      //   ],
      // ),
    );
  }
}

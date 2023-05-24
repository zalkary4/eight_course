import 'package:eight_course/2_lesson_user_page/user_detail_page.dart';
import 'package:eight_course/2_lesson_user_page/users_model_data.dart';
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
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemBuilder: ((context, index) {
          final user = users[index];
          return ListTile(
            /// onTap(){}=anonym function
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return UserDetailPage();
                }),
              );
            },
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

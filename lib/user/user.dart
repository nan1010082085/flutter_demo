import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/package/footer_buttons/footer_buttons.dart';
class UserWidget extends StatelessWidget {
  static var routeName = '/user';

  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const UserPage(),
    );
  }
}

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: '设置',
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
          IconButton(
            icon: Icon(Icons.login_outlined),
            tooltip: '退出',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      persistentFooterButtons: <Widget>[FooterButtons()],
    );
  }
}

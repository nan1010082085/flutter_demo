import 'package:flutter/material.dart';
import 'package:my_app/login/login.dart';

class Forget extends StatelessWidget {
  static var routeName = '/forget';

  const Forget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'forget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ForgetPage(),
    );
  }
}

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  final _formKey = GlobalKey<FormState>();

  final username = TextEditingController();
  final password = TextEditingController();
  final twicePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('修改密码'),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '修改密码',
                  style: TextStyle(fontSize: 30),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: '用户名',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '请输入用户名';
                          }
                          return null;
                        },
                        controller: username,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: '新密码',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '请输入新密码';
                          }
                          return null;
                        },
                        controller: password,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: '确认密码',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '请输入新密码';
                          }
                          return null;
                        },
                        controller: twicePassword,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              child: Text('返回登陆'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  print('修改密码');
                                  print({
                                    'username': username.text,
                                    'password': password.text,
                                    'twicePassword': twicePassword.text,
                                  });
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  );
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.blue),
                                foregroundColor:
                                    WidgetStateProperty.all(Colors.white),
                              ),
                              child: Text('确认'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

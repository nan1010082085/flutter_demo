import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static var routeName = '/login';

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final username = TextEditingController();
  final password = TextEditingController();

  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登陆'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '登陆',
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
                          controller: username),
                      TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: '密码',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '请输入密码';
                            }
                            return null;
                          },
                          controller: password),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Checkbox(
                              value: checkValue,
                              onChanged: (value) {
                                setState(() {
                                  checkValue = value!;
                                });
                              },
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/forget');
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.blue,
                              ),
                              child: Text('忘记密码？'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: Text('注册'),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // ignore: avoid_print
                                  print('登陆');
                                  print({
                                    'check': checkValue,
                                    'username': username.text,
                                    'password': password.text,
                                  });
                                  if (checkValue) {
                                    print('记住密码');
                                  }
                                  Navigator.pushReplacementNamed(
                                      context, '/home');
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.blue),
                                foregroundColor:
                                    WidgetStateProperty.all(Colors.white),
                              ),
                              child: Text('登陆'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

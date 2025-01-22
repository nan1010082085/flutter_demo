import 'package:flutter/material.dart';
import 'package:my_app/category/category.dart';
import 'package:my_app/home/home.dart';
import 'package:my_app/login/forget.dart';
import 'package:my_app/login/login.dart';
import 'package:my_app/login/register.dart';
import 'package:my_app/order/order.dart';
import 'package:my_app/user/setting.dart';
import 'package:my_app/user/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
      routes: {
        Login.routeName: (context) => const LoginPage(),
        Register.routeName: (context) => const RegisterPage(),
        Forget.routeName: (context) => const ForgetPage(),
        HomeWidget.routeName: (context) => const HomePage(),
        UserWidget.routeName: (context) => const UserPage(),
        OrderWidget.routeName: (context) => const OrderPage(),
        CategoryWidget.routeName: (context) => const CategoryPage(),
        SettingPage.routeName: (context) => const SettingPage(),
      },
    );
  }
}

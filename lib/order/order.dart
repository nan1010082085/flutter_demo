import 'package:flutter/material.dart';
import '../package/footer_buttons/footer_buttons.dart';

class OrderWidget extends StatelessWidget {
  static var routeName = '/order';

  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const OrderPage(),
    );
  }
}

class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
  });

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('订单'),
      ),
      body: ListView(
        children: List.generate(100, (idnex) {
          return SizedBox(
            height: 90,
            child: ListTile(
              title: Text('订单$idnex'),
            ),
          );
        }),
      ),
      persistentFooterButtons: <Widget>[FooterButtons()],
    );
  }
}

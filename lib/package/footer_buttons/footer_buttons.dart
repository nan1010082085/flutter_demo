import 'package:flutter/material.dart';
class FooterButtons extends StatefulWidget {
  const FooterButtons({super.key});

  @override
  State<FooterButtons> createState() => _FooterButtonsState();
}

class _FooterButtonsState extends State<FooterButtons> {
  final Map _menu = {
    'home': 'home',
    'user': 'user',
    'category': 'category',
    'order': 'order',
  };

  void _go(String key) {
    Navigator.pushReplacementNamed(context, '/${key}');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.8),
          child: Column(
            children: <Widget>[
              FloatingActionButton(
                heroTag: 'home',
                onPressed: () => _go(_menu['home']),
                tooltip: 'HOME',
                child: const Icon(Icons.home),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.8),
          child: Column(
            children: <Widget>[
              FloatingActionButton(
                heroTag: 'category',
                onPressed: () => _go(_menu['category']),
                tooltip: 'CATEGORY',
                child: const Icon(Icons.category),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.8),
          child: Column(
            children: <Widget>[
              FloatingActionButton(
                heroTag: 'order',
                onPressed: () => _go(_menu['order']),
                tooltip: 'ORDER',
                child: const Icon(Icons.sort),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.8),
          child: Column(
            children: <Widget>[
              FloatingActionButton(
                heroTag: 'user',
                onPressed: () => _go(_menu['user']),
                tooltip: 'USER',
                child: const Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

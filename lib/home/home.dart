import 'package:flutter/material.dart';
import '../package/footer_buttons/footer_buttons.dart';

class HomeWidget extends StatelessWidget {
  static var routeName = '/home';

  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('书架'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: constraints.maxWidth,
                height: 200,
                child: FractionallySizedBox(
                  widthFactor: 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('书架'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: constraints.maxWidth,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FloatingActionButton(
                      heroTag: 'heroTag1',
                      tooltip: '书架',
                      onPressed: () {},
                      child: Text('书架'),
                    ),
                    FloatingActionButton(
                      heroTag: 'heroTag2',
                      tooltip: '分类',
                      onPressed: () {},
                      child: Text('分类'),
                    ),
                    FloatingActionButton(
                      heroTag: 'heroTag3',
                      tooltip: '订单',
                      onPressed: () {},
                      child: Text('订单'),
                    ),
                    FloatingActionButton(
                      heroTag: 'heroTag4',
                      tooltip: '我的',
                      onPressed: () {},
                      child: Text('我的'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight - 300,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                    20,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: constraints.maxWidth / 2,
                          child: Center(
                            child: Text('item $index'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          );
        },
      ),
      persistentFooterButtons: <Widget>[FooterButtons()],
    );
  }
}

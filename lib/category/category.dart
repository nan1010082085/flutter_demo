import 'package:flutter/material.dart';
import '../package/footer_buttons/footer_buttons.dart';

class CategoryWidget extends StatelessWidget {
  static var routeName = '/category';

  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Category',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const CategoryPage(),
    );
  }
}

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    super.key,
  });

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('分类'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: constraints.maxWidth,
                  height: 300,
                  child: GridView.count(
                    crossAxisCount: 4,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(40, (index) {
                      return SizedBox(
                        width: 50,
                        height: 50,
                        child: Center(
                          child: Text('data ${index}'),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight - 300 - 20,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(40, (index) {
                    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        height: 100,
                        child: Center(
                          child: Text('data ${index}'),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          );
        },
      ),
      persistentFooterButtons: <Widget>[FooterButtons()],
    );
  }
}

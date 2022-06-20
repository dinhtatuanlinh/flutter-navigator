import 'package:flutter/material.dart';

import 'ProductBox.dart';
import 'ProductPage.dart';
import 'Product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          title: 'Product state demo home page',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final items = getProducts();


  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(title: Text("Product Navigation")),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(item: items[index]),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => ProductPage(item: items[index]),
                ),
                );
              },
            );
          },
        ));
  }
}

import 'package:e_commerce_full/dummy/home_json.dart';
import 'package:e_commerce_full/model/product_model.dart';
import 'package:e_commerce_full/theme/colors.dart';
import 'package:flutter/material.dart';

class TestModel extends StatefulWidget {
  const TestModel({ Key? key }) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<TestModel> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: buildProducts(getProducts()),
    );
  }

  Widget buildProducts(List<Product> products) => ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
              child: Column(
            children: [
              Text(product.name.toString(), style: const TextStyle(color: secondary),),
              Text(product.price.toString()),
              Text(product.image.toString()),
              Text(product.favorite.toString()),
            ],
          ));
        },
      );
}
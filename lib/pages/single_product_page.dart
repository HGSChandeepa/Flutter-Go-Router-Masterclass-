import 'package:flutter/material.dart';
import 'package:gorouter/models/product.dart';

class SingleProductPage extends StatelessWidget {
  final Product product;
  const SingleProductPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(product.title),
          Image.network(
            product.imageUrl,
            width: 100,
          ),
          Text(product.description),
          Text(product.price.toString()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gorouter/data/products_data.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final productsList = ProductData().productsList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
      ),
      body: ListView.builder(
        itemCount: productsList.length,
        itemBuilder: (context, index) {
          final product = productsList[index];
          return Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              title: Text(product.title),
              trailing: Text('\$${product.price}'),
              leading: Image.network(
                product.imageUrl,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

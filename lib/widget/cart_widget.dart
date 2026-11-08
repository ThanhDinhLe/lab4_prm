import 'package:flutter/material.dart';
import '../model/product.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const Center(child: Text('Cart is empty'));
    }

    return ListView(
      children: [
        for (final product in products)
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(product.name),
            trailing: Text('\$${product.price}'),
          ),
      ],
    );
  }
}
